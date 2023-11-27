import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class RatingbarItemWidget extends StatelessWidget {
  const RatingbarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 4.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse13,
                height: 54.adaptSize,
                width: 54.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 34.v,
                  bottom: 7.v,
                ),
                child: CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 3,
                  itemSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            height: 40.v,
            width: 343.h,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
