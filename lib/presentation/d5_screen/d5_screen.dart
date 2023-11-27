import '../d5_screen/widgets/bitmap7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class D5Screen extends StatelessWidget {
  const D5Screen({Key? key})
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
              _buildSixtyFive(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 58.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder17,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRepeatGrid6,
                        height: 45.v,
                        width: 327.h,
                      ),
                      SizedBox(height: 70.v),
                      _buildBitmap(context),
                      SizedBox(height: 92.v),
                      _buildSixtySeven(context),
                      SizedBox(height: 39.v),
                      CustomIconButton(
                        height: 44.v,
                        width: 311.h,
                        child: CustomImageView(),
                      ),
                      SizedBox(height: 5.v),
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
  Widget _buildSixtyFive(BuildContext context) {
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
  Widget _buildBitmap(BuildContext context) {
    return SizedBox(
      height: 56.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 31.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Bitmap7ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Container(
      width: 328.h,
      padding: EdgeInsets.symmetric(
        horizontal: 85.h,
        vertical: 41.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup67,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 42.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle222,
            height: 31.v,
            width: 72.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
        ],
      ),
    );
  }
}
