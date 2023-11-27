import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_floating_button.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class A6Screen extends StatelessWidget {
  const A6Screen({Key? key})
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
        backgroundColor: appTheme.blueGray90001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.blueGray90001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgRectangle4314x375,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwentyThree(context),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle218,
                  height: 118.v,
                  width: 104.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 20.h),
                ),
                SizedBox(height: 14.v),
                _buildIcAudioOn(context),
              ],
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 16.v,
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBatteryWhiteA700,
            height: 11.v,
            width: 24.h,
          ),
          SizedBox(height: 23.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcSwitchCamera,
            height: 22.v,
            width: 29.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup444,
            height: 40.v,
            width: 64.h,
            margin: EdgeInsets.only(right: 98.h),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIcAudioOn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup12,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcAudioOn,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 42.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 42.v,
            ),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcVideoOff,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 42.v,
            ),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcEndCall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              bottom: 42.v,
            ),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcMicOn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: appTheme.black90001.withOpacity(0.54),
      decoration: FloatingButtonStyleHelper.fillBlack,
      child: CustomImageView(
        imagePath: ImageConstant.imgIcMap,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }
}
