import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';

class B4Screen extends StatelessWidget {
  B4Screen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEightyFive(context),
              SizedBox(height: 68.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup4625,
                height: 109.v,
                width: 364.h,
              ),
              SizedBox(height: 71.v),
              _buildLooksUnisexSalon(context),
              SizedBox(height: 45.v),
              _buildView(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 39.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcFilterBlueGray900,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 66.v),
          CustomImageView(
            imagePath: ImageConstant.imgSearchField,
            height: 36.v,
            width: 344.h,
            radius: BorderRadius.circular(
              10.h,
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
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 141.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup1,
            height: 123.v,
            width: 360.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              margin: EdgeInsets.only(right: 16.h),
              decoration: BoxDecoration(
                color: appTheme.deepOrange400,
                borderRadius: BorderRadius.circular(
                  28.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black90001.withOpacity(0.24),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
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
