import '../a7_screen/widgets/bitmap_item_widget.dart';
import '../a7_screen/widgets/rectangle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';
import 'package:saloonnew/widgets/custom_rating_bar.dart';

class A7Screen extends StatelessWidget {
  const A7Screen({Key? key})
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSixtyNine(context),
                _buildLine(context),
                SizedBox(height: 50.v),
                CustomImageView(
                  height: 86.v,
                  width: 335.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 56.v),
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 21.h),
                  decoration: BoxDecoration(
                    color: appTheme.green500,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 21.h),
                  decoration: BoxDecoration(
                    color: appTheme.green500,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                _buildZulaufGreen(context),
                SizedBox(height: 55.v),
                _buildRectangle(context),
                SizedBox(height: 40.v),
                CustomIconButton(
                  height: 44.v,
                  width: 311.h,
                  alignment: Alignment.center,
                  child: CustomImageView(),
                ),
                SizedBox(height: 54.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return SizedBox(
      height: 289.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4314x375,
            height: 289.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
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
                SizedBox(height: 75.v),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 14.v,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 48.v,
                          bottom: 4.v,
                        ),
                        child: CustomRatingBar(
                          initialRating: 3,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup402,
                        height: 24.v,
                        width: 47.h,
                        margin: EdgeInsets.only(top: 45.v),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return SizedBox(
      height: 299.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
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
                  SizedBox(height: 15.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup522,
                    height: 66.v,
                    width: 328.h,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                  SizedBox(height: 214.v),
                  SizedBox(
                    width: 64.h,
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 117.v,
              width: 355.h,
              margin: EdgeInsets.only(bottom: 52.v),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 117.v,
                      child: ListView.separated(
                        padding: EdgeInsets.fromLTRB(4.h, 4.v, 43.h, 56.v),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: 29.h,
                          );
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return BitmapItemWidget();
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "lbl_sr_berber".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRepeatGrid11,
                    height: 64.v,
                    width: 355.h,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgC2ff0fc4df695d7,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 4.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildZulaufGreen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              height: 41.v,
              width: 221.h,
              margin: EdgeInsets.only(
                top: 28.v,
                bottom: 25.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img614fb9c921f4748,
              height: 94.adaptSize,
              width: 94.adaptSize,
              margin: EdgeInsets.only(left: 20.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangle(BuildContext context) {
    return SizedBox(
      height: 72.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 43.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 8.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return RectangleItemWidget();
        },
      ),
    );
  }
}
