import '../f2_screen/widgets/bitmap4_item_widget.dart';
import '../f2_screen/widgets/rectangle1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_rating_bar.dart';

class F2Screen extends StatelessWidget {
  const F2Screen({Key? key})
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
              children: [
                _buildTwo(context),
                _buildLine(context),
                SizedBox(height: 16.v),
                _buildRectangle(context),
                SizedBox(height: 45.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
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
                          return Bitmap4ItemWidget();
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
  Widget _buildRectangle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 173.v,
          crossAxisCount: 2,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Rectangle1ItemWidget();
        },
      ),
    );
  }
}
