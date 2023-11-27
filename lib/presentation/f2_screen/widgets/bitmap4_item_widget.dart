import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class Bitmap4ItemWidget extends StatelessWidget {
  const Bitmap4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Align(
        alignment: Alignment.topLeft,
        child: CustomImageView(
          imagePath: ImageConstant.img970d96ff881702d,
          height: 56.adaptSize,
          width: 56.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
      ),
    );
  }
}
