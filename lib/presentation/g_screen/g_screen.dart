import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';
import 'package:saloonnew/widgets/custom_floating_button.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class GScreen extends StatelessWidget {
  GScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 799.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 667.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imageNotFound,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMap,
                        height: 667.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 44.v,
                            right: 9.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildPin(context),
                              SizedBox(height: 46.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 33.h,
                                  right: 52.h,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPin,
                                      height: 47.v,
                                      width: 39.h,
                                      margin: EdgeInsets.only(
                                        top: 54.v,
                                        bottom: 72.v,
                                      ),
                                    ),
                                    Container(
                                      height: 173.v,
                                      width: 209.h,
                                      margin: EdgeInsets.only(left: 22.h),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              height: 166.adaptSize,
                                              width: 166.adaptSize,
                                              decoration: AppDecoration
                                                  .fillLightBlueAA
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder83,
                                              ),
                                              child: CustomIconButton(
                                                height: 36.adaptSize,
                                                width: 36.adaptSize,
                                                padding: EdgeInsets.all(8.h),
                                                alignment: Alignment.center,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup486,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPin,
                                            height: 47.v,
                                            width: 39.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                              top: 16.v,
                                              right: 20.h,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPin,
                                            height: 47.v,
                                            width: 39.h,
                                            alignment: Alignment.bottomRight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 49.v),
                              Container(
                                margin: EdgeInsets.only(right: 114.h),
                                decoration:
                                    AppDecoration.outlineBluegray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle4314x375,
                                      height: 100.v,
                                      width: 243.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup435,
                                      height: 44.v,
                                      width: 36.h,
                                      margin: EdgeInsets.only(right: 11.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle217,
                                      height: 30.v,
                                      width: 65.h,
                                    ),
                                  ],
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
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 83.v),
                  decoration: AppDecoration.outlineBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 134.v,
                        width: 114.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "msg_looks_unisex_salon".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle13100x114,
                              height: 100.v,
                              width: 114.h,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "msg_288_mcclure_court".tr,
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildIcFilter(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPin(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 52.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPin,
              height: 47.v,
              width: 39.h,
              margin: EdgeInsets.only(top: 53.v),
            ),
            Spacer(
              flex: 69,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPin,
              height: 47.v,
              width: 39.h,
              margin: EdgeInsets.only(bottom: 53.v),
            ),
            Spacer(
              flex: 30,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgButtons,
              height: 90.v,
              width: 45.h,
              margin: EdgeInsets.only(bottom: 10.v),
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: appTheme.deepOrange400,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup485,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Icchat:
        return AppRoutes.c3Page;
      case BottomBarEnum.Icappointment:
        return AppRoutes.b5Page;
      case BottomBarEnum.Icprofile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.c3Page:
        return C3Page();
      case AppRoutes.b5Page:
        return B5Page();
      default:
        return DefaultWidget();
    }
  }
}
