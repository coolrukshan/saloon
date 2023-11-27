import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class BScreen extends StatelessWidget {
  const BScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBitmap,
                height: 812.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: _buildBattery(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBattery(BuildContext context) {
    return Container(
      height: 221.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 591.v),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 17.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup12,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 48.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgBattery,
                    height: 11.v,
                    width: 24.h,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 96.adaptSize,
              width: 96.adaptSize,
              margin: EdgeInsets.only(right: 67.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.gradientPinkAToDeepOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgPath347,
                height: 51.v,
                width: 13.h,
                alignment: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
