import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FDialog extends StatelessWidget {
  const FDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 335.h,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup531,
        height: 295.v,
        width: 280.h,
        alignment: Alignment.center,
      ),
    );
  }
}
