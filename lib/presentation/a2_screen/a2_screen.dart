import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class A2Screen extends StatelessWidget {
  const A2Screen({Key? key})
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
        backgroundColor: appTheme.black90001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.black90001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img03a,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwentySix(context),
                SizedBox(height: 11.v),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.h,
                      vertical: 121.v,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(
                          flex: 55,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 73.adaptSize,
                            width: 73.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 15.v,
                            ),
                            decoration: AppDecoration.gradientPinkAToDeepOrange
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPath347,
                              height: 42.v,
                              width: 31.h,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 44,
                        ),
                        _buildBtnPrimary(context),
                        SizedBox(height: 24.v),
                        CustomIconButton(
                          height: 44.v,
                          width: 311.h,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillBlueA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBtnSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
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
    );
  }

  /// Section Widget
  Widget _buildBtnPrimary(BuildContext context) {
    return Container(
      width: 311.h,
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.gradientDeepOrangeToDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGoogleFill,
        height: 20.adaptSize,
        width: 20.adaptSize,
      ),
    );
  }
}
