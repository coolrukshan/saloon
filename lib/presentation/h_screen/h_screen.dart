import '../h_screen/widgets/spacer1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class HScreen extends StatelessWidget {
  const HScreen({Key? key})
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
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 667.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 13.v),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imageNotFound,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMap,
                        height: 667.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      _buildPin(context),
                    ],
                  ),
                ),
              ),
              _buildIcFilter(context),
              _buildSpacer(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPin(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          top: 44.v,
          right: 8.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 172.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPin,
                    height: 47.v,
                    width: 39.h,
                  ),
                  SizedBox(height: 53.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPin,
                    height: 47.v,
                    width: 39.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 210.v,
                          width: 215.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 166.adaptSize,
                                  width: 166.adaptSize,
                                  decoration:
                                      AppDecoration.fillLightBlueAA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder83,
                                  ),
                                  child: CustomIconButton(
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup486,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPin,
                                height: 47.v,
                                width: 39.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(right: 33.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPin,
                                height: 47.v,
                                width: 39.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 65.v),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgButtons,
                          height: 90.v,
                          width: 45.h,
                          margin: EdgeInsets.only(
                            left: 1.h,
                            bottom: 121.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 62.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgPin,
                      height: 47.v,
                      width: 39.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 52.h),
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

  /// Section Widget
  Widget _buildIcFilter(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(15.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup85,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 39.v),
                CustomImageView(
                  imagePath: ImageConstant.imgIcFilterBlueGray900,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 31.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSearchField,
                  height: 36.v,
                  width: 275.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Divider(
              color: appTheme.black90001.withOpacity(0.35),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacer(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(top: 365.v),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 57.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup487,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5.5.v),
              child: SizedBox(
                width: 357.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.black90001.withOpacity(0.16),
                ),
              ),
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return Spacer1ItemWidget();
          },
        ),
      ),
    );
  }
}
