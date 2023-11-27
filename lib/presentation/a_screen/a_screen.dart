import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class AScreen extends StatelessWidget {
  const AScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildSlideThree(context),
                        SizedBox(height: 50.v),
                        Container(
                          height: 96.adaptSize,
                          width: 96.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 27.h,
                            vertical: 20.v,
                          ),
                          decoration:
                              AppDecoration.gradientPinkAToDeepOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPath347,
                            height: 51.v,
                            width: 13.h,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup480,
                          height: 71.v,
                          width: 317.h,
                        ),
                        SizedBox(height: 196.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSlide3Copy,
                          height: 141.v,
                          width: 167.h,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse15,
                    height: 119.v,
                    width: 89.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse16,
                    height: 98.v,
                    width: 88.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 117.v),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSlideThree(BuildContext context) {
    return SizedBox(
      height: 240.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSlide3,
            height: 240.v,
            width: 310.h,
            alignment: Alignment.centerLeft,
          ),
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
        ],
      ),
    );
  }
}
