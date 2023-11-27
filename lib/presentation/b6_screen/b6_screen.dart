import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/app_bar/appbar_leading_image.dart';
import 'package:saloonnew/widgets/app_bar/appbar_trailing_image.dart';
import 'package:saloonnew/widgets/app_bar/custom_app_bar.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';

class B6Screen extends StatelessWidget {
  B6Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.blueGray90001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.blueGray90001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup399,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildSeventyFive(context),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.img9584276ab9c1784,
                        height: 118.v,
                        width: 104.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 20.h),
                      ),
                      SizedBox(height: 14.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup12,
                        height: 140.v,
                        width: 375.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup12,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 19.v),
          CustomAppBar(
            height: 64.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIcSwitchCamera,
              margin: EdgeInsets.only(
                left: 15.h,
                bottom: 42.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgGroup444,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 24.v,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgIcMap,
                margin: EdgeInsets.fromLTRB(86.h, 2.v, 16.h, 39.v),
              ),
            ],
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
