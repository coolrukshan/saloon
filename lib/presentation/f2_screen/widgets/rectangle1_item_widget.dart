import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class Rectangle1ItemWidget extends StatelessWidget {
  const Rectangle1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle143,
      height: 172.adaptSize,
      width: 172.adaptSize,
    );
  }
}
