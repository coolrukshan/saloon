import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class SlidenineteenItemWidget extends StatelessWidget {
  const SlidenineteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgSlide19,
        height: 406.v,
        width: 375.h,
      ),
    );
  }
}
