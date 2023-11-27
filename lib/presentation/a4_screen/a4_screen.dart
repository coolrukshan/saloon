import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';
import 'package:saloonnew/widgets/custom_text_form_field.dart';

class A4Screen extends StatelessWidget {
  A4Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEditText(context),
              SizedBox(height: 73.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup4624,
                height: 109.v,
                width: 364.h,
              ),
              SizedBox(height: 71.v),
              _buildLooksUnisexSalon(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 17.v,
                right: 14.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBattery,
                    height: 11.v,
                    width: 24.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 21.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcFilter,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 281.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnion1,
                    height: 281.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
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
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgBattery,
                                height: 11.v,
                                width: 24.h,
                                alignment: Alignment.centerRight,
                              ),
                              SizedBox(height: 27.v),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup11,
                                      height: 16.v,
                                      width: 24.h,
                                      margin: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 1.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgIcFilter,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 23.v),
                            ],
                          ),
                        ),
                        SizedBox(height: 87.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 36.h),
                          child: CustomTextFormField(
                            controller: editTextController,
                            textInputAction: TextInputAction.done,
                          ),
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
    );
  }

  /// Section Widget
  Widget _buildLooksUnisexSalon(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle41,
                  height: 100.v,
                  width: 243.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup435,
                  height: 44.v,
                  width: 36.h,
                  margin: EdgeInsets.only(right: 11.h),
                ),
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle217,
                  height: 30.v,
                  width: 65.h,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 11.h),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle13,
                  height: 100.v,
                  width: 105.h,
                ),
                Text(
                  "msg_looks_unisex_salon".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 26.v),
                Text(
                  "msg_288_mcclure_court".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
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
