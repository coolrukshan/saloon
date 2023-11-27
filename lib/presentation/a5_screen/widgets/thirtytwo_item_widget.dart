import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  const ThirtytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 69.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            height: 17.v,
            width: 272.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 16.h,
              bottom: 22.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 69.v,
              width: 359.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img970d96ff881702d,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    alignment: Alignment.topLeft,
                  ),
                  CustomImageView(
                    height: 15.v,
                    width: 56.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      right: 14.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup536,
                    height: 40.v,
                    width: 18.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 43.h),
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
