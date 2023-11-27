import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class EdwardkellyclippingItemWidget extends StatelessWidget {
  const EdwardkellyclippingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131.v,
      width: 107.h,
      margin: EdgeInsets.only(top: 1.v),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle41,
            height: 131.v,
            width: 107.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 28.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup447,
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    height: 17.v,
                    width: 79.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
