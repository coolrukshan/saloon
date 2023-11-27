import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class D1Screen extends StatelessWidget {
  const D1Screen({Key? key})
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
            alignment: Alignment.bottomCenter,
            children: [
              _buildSeventeen(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 143.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder17,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRepeatGrid1,
                        height: 110.v,
                        width: 327.h,
                      ),
                      SizedBox(height: 40.v),
                      CustomIconButton(
                        height: 44.v,
                        width: 311.h,
                        child: CustomImageView(),
                      ),
                      SizedBox(height: 36.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 314.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle41,
              height: 314.v,
              width: 375.h,
              alignment: Alignment.center,
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
                    SizedBox(height: 71.v),
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
      ),
    );
  }
}
