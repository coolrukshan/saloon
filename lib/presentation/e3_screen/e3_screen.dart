import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class E3Screen extends StatelessWidget {
  const E3Screen({Key? key})
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
              _buildBattery(context),
              _buildLine(context),
              _buildBitmap(context),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3814,
                height: 160.v,
                width: 343.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 67.v),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 63.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder17,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 28.v),
                      CustomImageView(
                        height: 61.v,
                        width: 327.h,
                      ),
                      SizedBox(height: 78.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRepeatGrid8,
                        height: 201.v,
                        width: 351.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 54.v),
                      Container(
                        height: 44.v,
                        width: 311.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            22.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(1, 0.5),
                            end: Alignment(0, 0.5),
                            colors: [
                              appTheme.deepOrange300,
                              appTheme.deepOrange400,
                            ],
                          ),
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
    );
  }

  /// Section Widget
  Widget _buildBattery(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 289.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3814,
              height: 289.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBattery,
                          height: 11.v,
                          width: 24.h,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 25.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIcBackWhiteA700,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        SizedBox(height: 22.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 37.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12,
                    height: 97.v,
                    width: 375.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 98.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup68,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 227.v),
            SizedBox(
              width: 80.h,
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBitmap(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 19.h,
          top: 347.v,
          bottom: 349.v,
        ),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img970d96ff881702d,
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(bottom: 51.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBitmap56x56,
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(
                  left: 23.h,
                  bottom: 51.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle218,
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(
                  left: 23.h,
                  bottom: 51.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBitmap56x56,
                height: 64.adaptSize,
                width: 64.adaptSize,
                margin: EdgeInsets.only(
                  left: 23.h,
                  bottom: 51.v,
                ),
              ),
              Container(
                height: 115.v,
                width: 64.h,
                margin: EdgeInsets.only(left: 23.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 115.v,
                        width: 8.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBitmap64x64,
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
