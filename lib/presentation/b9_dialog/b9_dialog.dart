import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore_for_file: must_be_immutable
class B9Dialog extends StatelessWidget {
  const B9Dialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 335.h,
      padding: EdgeInsets.all(27.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup531WhiteA700339x280,
            height: 339.v,
            width: 280.h,
          ),
        ],
      ),
    );
  }
}
