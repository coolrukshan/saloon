import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_rating_bar.dart';

class I1Screen extends StatelessWidget {
  const I1Screen({Key? key})
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
              _buildFiftyFour(context),
              _buildFiftyThree(context),
              _buildBitmap(context),
              _buildWidget(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 55.v),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      color: appTheme.blueGray100,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup52,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      _buildFiftySeven(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 295.v),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      color: appTheme.blueGray100,
                    ),
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
  Widget _buildFiftyFour(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 224.v),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
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
                width: 70.h,
                child: Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBitmap(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 20.h,
          top: 418.v,
          bottom: 276.v,
        ),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 117.v,
            width: 355.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img970d96ff881702d,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBitmap56x56,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          margin: EdgeInsets.only(left: 29.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle218,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            bottom: 1.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img9584276ab9c1784,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            bottom: 1.v,
                          ),
                        ),
                      ],
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
                  imagePath: ImageConstant.imgRepeatGrid11WhiteA700,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 15.h,
          bottom: 73.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup422,
              height: 81.v,
              width: 344.h,
            ),
            SizedBox(height: 8.v),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle222,
              height: 30.v,
              width: 71.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 36.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup57,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.v),
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup3,
            height: 259.v,
            width: 363.h,
          ),
        ],
      ),
    );
  }
}
