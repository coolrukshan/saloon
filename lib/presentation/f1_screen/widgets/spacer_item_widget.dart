import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class SpacerItemWidget extends StatelessWidget {
  const SpacerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4314x375,
          height: 83.v,
          width: 110.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup435,
          height: 44.v,
          width: 35.h,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 27.v,
            bottom: 12.v,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle222,
          height: 30.v,
          width: 71.h,
          radius: BorderRadius.circular(
            15.h,
          ),
          margin: EdgeInsets.only(top: 51.v),
        ),
      ],
    );
  }
}
