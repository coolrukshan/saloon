import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class EScreen extends StatelessWidget {
  const EScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup12,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                _buildEleven(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBattery,
            height: 11.v,
            width: 24.h,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 132.v),
          Container(
            height: 96.adaptSize,
            width: 96.adaptSize,
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
          SizedBox(height: 132.v),
        ],
      ),
    );
  }
}
