import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:saloonnew/widgets/app_bar/appbar_trailing_image.dart';
import 'package:saloonnew/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class B5Page extends StatelessWidget {
  const B5Page({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Opacity(
                opacity: 0.7,
                child: Divider(
                  color: appTheme.black90001.withOpacity(0.35),
                ),
              ),
              SizedBox(height: 57.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3687,
                height: 80.v,
                width: 235.h,
                margin: EdgeInsets.only(right: 16.h),
              ),
              SizedBox(height: 24.v),
              _buildLayerFive(context),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 72.v,
                  width: 252.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray200,
                    borderRadius: BorderRadius.circular(
                      17.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              Container(
                height: 44.v,
                width: 235.h,
                margin: EdgeInsets.only(right: 16.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPath2864,
                      height: 44.v,
                      width: 235.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDoubleTickFilled,
                      height: 8.v,
                      width: 9.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 9.h,
                        bottom: 6.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                height: 141.v,
                width: 235.h,
                margin: EdgeInsets.only(right: 16.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 7.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup93,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle3814,
                  height: 126.v,
                  width: 217.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img9584276ab9c1784,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                      ),
                      Container(
                        height: 40.v,
                        width: 73.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle3686,
                              height: 40.v,
                              width: 73.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 10.v,
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    spacing: 7,
                                    activeDotColor:
                                        appTheme.deepOrange400.withOpacity(0.6),
                                    dotColor: appTheme.deepOrange400
                                        .withOpacity(0.53),
                                    activeDotScale: 1.6666666666666667,
                                    dotHeight: 6.v,
                                    dotWidth: 6.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              Opacity(
                opacity: 0.8,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 88.v,
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcBack,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 54.v,
          bottom: 10.v,
        ),
      ),
      title: Container(
        height: 11.adaptSize,
        width: 11.adaptSize,
        margin: EdgeInsets.only(
          left: 76.h,
          top: 59.v,
          bottom: 18.v,
        ),
        decoration: BoxDecoration(
          color: appTheme.green500,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
          border: Border.all(
            color: appTheme.whiteA700,
            width: 2.h,
            strokeAlign: strokeAlignOutside,
          ),
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup14,
          margin: EdgeInsets.fromLTRB(16.h, 57.v, 14.h, 3.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup535,
          margin: EdgeInsets.only(
            left: 26.h,
            top: 55.v,
            right: 30.h,
          ),
        ),
      ],
      styleType: Style.bgStyle,
    );
  }

  /// Section Widget
  Widget _buildLayerFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 55.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img9584276ab9c1784,
              height: 44.adaptSize,
              width: 44.adaptSize,
              margin: EdgeInsets.only(bottom: 39.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3686,
              height: 83.v,
              width: 252.h,
              margin: EdgeInsets.only(left: 9.h),
            ),
          ],
        ),
      ),
    );
  }
}
