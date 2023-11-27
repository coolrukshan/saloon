import '../a5_screen/widgets/cdbcf4_item_widget.dart';
import '../a5_screen/widgets/thirtytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/app_bar/appbar_trailing_image.dart';
import 'package:saloonnew/widgets/app_bar/custom_app_bar.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';
import 'package:saloonnew/widgets/custom_floating_button.dart';

class A5Screen extends StatelessWidget {
  A5Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCdbcf(context),
              SizedBox(height: 12.v),
              _buildThirtyTwo(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCdbcf(BuildContext context) {
    return SizedBox(
      height: 252.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3811,
            height: 164.v,
            width: 375.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 88.v,
              width: 362.h,
              margin: EdgeInsets.only(bottom: 16.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 70.v,
                            child: ListView.separated(
                              padding: EdgeInsets.only(left: 1.h),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  width: 17.h,
                                );
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Cdbcf4ItemWidget();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        CustomImageView(
                          height: 17.v,
                          width: 70.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 48.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            height: 17.v,
                            width: 70.h,
                            margin: EdgeInsets.only(top: 71.v),
                          ),
                          CustomImageView(
                            height: 17.v,
                            width: 70.h,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              top: 71.v,
                            ),
                          ),
                          CustomImageView(
                            height: 17.v,
                            width: 70.h,
                            margin: EdgeInsets.only(
                              left: 11.h,
                              top: 71.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRepeatGrid12,
                    height: 17.v,
                    width: 312.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 29.v),
                  ),
                  CustomImageView(
                    height: 17.v,
                    width: 74.h,
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 14.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup33,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 40.v),
                  CustomAppBar(
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgGroup535,
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                      ),
                    ],
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
  Widget _buildThirtyTwo(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgRectangle3811,
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
              padding: EdgeInsets.symmetric(vertical: 3.5.v),
              child: SizedBox(
                width: 358.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.black90001.withOpacity(0.16),
                ),
              ),
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return ThirtytwoItemWidget();
          },
        ),
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
        imagePath: ImageConstant.imgIcMap,
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
