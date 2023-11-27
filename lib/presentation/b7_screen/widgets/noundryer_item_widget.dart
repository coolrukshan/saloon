import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class NoundryerItemWidget extends StatelessWidget {
  const NoundryerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgNounDryer1830788,
      height: 23.v,
      width: 34.h,
    );
  }
}
