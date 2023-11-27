import '../g1_screen/widgets/bitmap5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_rating_bar.dart';

class G1Screen extends StatelessWidget {
  const G1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildNinetyEight(context),
                  _buildLine(context),
                  SizedBox(height: 16.v),
                  _buildWidget(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildWidget1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
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
              padding: EdgeInsets.symmetric(horizontal: 23.h),
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 15.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup522,
                    height: 66.v,
                    width: 328.h,
                  ),
                  SizedBox(height: 214.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 154.h,
                      child: Divider(
                        endIndent: 74.h,
                      ),
                    ),
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
                          return Bitmap5ItemWidget();
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
  Widget _buildWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 237.v,
            width: 239.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle220131x107,
                  height: 236.adaptSize,
                  width: 236.adaptSize,
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle143236x236,
                  height: 236.adaptSize,
                  width: 236.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2201,
            height: 114.adaptSize,
            width: 114.adaptSize,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 115.v,
              width: 116.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle220131x107,
                    height: 114.adaptSize,
                    width: 114.adaptSize,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle220131x107,
                    height: 114.adaptSize,
                    width: 114.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3814,
            height: 113.v,
            width: 359.h,
            margin: EdgeInsets.only(left: 1.h),
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle143114x114,
            height: 114.adaptSize,
            width: 114.adaptSize,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 8.h,
        bottom: 45.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle160,
            height: 114.adaptSize,
            width: 114.adaptSize,
            margin: EdgeInsets.only(top: 122.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle220,
            height: 236.adaptSize,
            width: 236.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }
}
