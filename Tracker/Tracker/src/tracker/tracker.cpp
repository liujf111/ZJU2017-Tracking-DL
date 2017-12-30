#include "tracker.h"

#include <opencv2/videostab/inpainting.hpp>

#include "helper/helper.h"
#include "helper/bounding_box.h"
#include "network/regressor.h"
#include "network/regressor_train.h"
#include "helper/high_res_timer.h"
#include "helper/image_proc.h"

Tracker::Tracker(const bool show_tracking) :
  show_tracking_(show_tracking)
{
}

void Tracker::Init(const cv::Mat& image, const BoundingBox& bbox_gt,
                   RegressorBase* regressor) {
  image_prev_ = image;
  bbox_prev_tight_ = bbox_gt;

  // Predict in the current frame that the location will be approximately the same
  // as in the previous frame.
  // TODO - use a motion model?
  bbox_curr_prior_tight_ = bbox_gt;

  // Initialize the neural network.
  regressor->Init();
  Two_Image_bbox[1].x1_ = -100;
}

void Tracker::Init(const std::string& image_curr_path, const VOTRegion& region,
                   RegressorBase* regressor) {
  // Read the given image.
  const cv::Mat& image = cv::imread(image_curr_path);

  // Convert the VOT region into a bounding box.
  BoundingBox bbox_gt(region);

  // Initialize the tracker.
  Init(image, bbox_gt, regressor);
}

void Tracker::Track(const cv::Mat& image_curr, RegressorBase* regressor,
                    BoundingBox* bbox_estimate_uncentered) {
  // Get target from previous image.
  cv::Mat target_pad;
  CropPadImage(bbox_prev_tight_, image_prev_, &target_pad);

  // Crop the current image based on predicted prior location of target.
  cv::Mat curr_search_region;
  BoundingBox search_location;
  double edge_spacing_x, edge_spacing_y;
  CropPadImage(bbox_curr_prior_tight_, image_curr, &curr_search_region, &search_location, &edge_spacing_x, &edge_spacing_y);

  // Estimate the bounding box location of the target, centered and scaled relative to the cropped image.
  BoundingBox bbox_estimate;
  regressor->Regress(image_curr, curr_search_region, target_pad, &bbox_estimate);
  // Unscale the estimation to the real image size.
  BoundingBox bbox_estimate_unscaled;
//LinF  
#ifndef TEST_TRAIN_TOOLKIT
  bbox_estimate.Unscale(curr_search_region, &bbox_estimate_unscaled);
#else
  bbox_estimate_unscaled.x1_ = bbox_estimate.x1_ * target_pad.cols / 227;
  bbox_estimate_unscaled.y1_ = bbox_estimate.y1_ * target_pad.rows / 227;
  bbox_estimate_unscaled.x2_ = bbox_estimate.x2_ * target_pad.cols / 227;
  bbox_estimate_unscaled.y2_ = bbox_estimate.y2_ * target_pad.rows / 227;
 #endif 
//LinF
  // Find the estimated bounding box location relative to the current crop.
  bbox_estimate_unscaled.Uncenter(image_curr, search_location, edge_spacing_x, edge_spacing_y, bbox_estimate_uncentered);
  if (show_tracking_) {
    ShowTracking(target_pad, curr_search_region, bbox_estimate);
  }

  // Save the image.
  image_prev_ = image_curr;
  
  //Two_Image_bbox.push_back(*bbox_estimate_uncentered);
  Two_Image_bbox[0] = Two_Image_bbox[1];
  Two_Image_bbox[1] = *bbox_estimate_uncentered;
  // Save the current estimate as the location of the target.

  bbox_prev_tight_ = *bbox_estimate_uncentered;


  // Save the current estimate as the prior prediction for the next image.
  // TODO - replace with a motion model prediction?
  bbox_curr_prior_tight_ = *bbox_estimate_uncentered;
  /*
  if (Two_Image_bbox[0].x1_ > -100)
  {
      
      bbox_curr_prior_tight_.x1_ = 2 * Two_Image_bbox[1].x1_ - Two_Image_bbox[0].x1_;
      bbox_curr_prior_tight_.x2_ = 2 * Two_Image_bbox[1].x2_ - Two_Image_bbox[0].x2_;
      bbox_curr_prior_tight_.y1_ = 2 * Two_Image_bbox[1].y1_ - Two_Image_bbox[0].y1_;
      bbox_curr_prior_tight_.y2_ = 2 * Two_Image_bbox[1].y2_ - Two_Image_bbox[0].y2_;
      
  }
  */
  
}

void Tracker::ShowTracking(const cv::Mat& target_pad, const cv::Mat& curr_search_region, const BoundingBox& bbox_estimate) const {
  // Resize the target.
  cv::Mat target_resize;
  cv::resize(target_pad, target_resize, cv::Size(227, 227));

  // Show the resized target.
#ifndef NO_DISPLAY
  cv::namedWindow("Target", cv::WINDOW_AUTOSIZE );// Create a window for display.
  cv::imshow("Target", target_resize );                   // Show our image inside it.
#endif

  // Resize the image.
  cv::Mat image_resize;
  cv::resize(curr_search_region, image_resize, cv::Size(227, 227));

  // Unscale the estimate to match the rescaled image.
  BoundingBox bbox_estimate_unscaled;
  bbox_estimate.Unscale(image_resize, &bbox_estimate_unscaled);

  // Show the tracking estimate on the image.
  cv::Mat image_with_box;
  image_resize.copyTo(image_with_box);
  bbox_estimate_unscaled.DrawBoundingBox(&image_with_box);

#ifndef NO_DISPLAY
  cv::namedWindow("Estimate", cv::WINDOW_AUTOSIZE );// Create a window for display.
  cv::imshow("Estimate", image_with_box );                   // Show our image inside it.
  cv::waitKey(0);
#endif
}
