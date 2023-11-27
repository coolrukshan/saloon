import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class Rectangle2ItemWidget extends StatelessWidget {
  const Rectangle2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle2201,
        height: 72.adaptSize,
        width: 72.adaptSize,
      ),
    );
  }
}
