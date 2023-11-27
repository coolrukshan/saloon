import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "01a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.aScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "01b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "01c".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "01d".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.dScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "01e".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.eScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "02a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "02b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03c".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.c1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03d".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.d1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "03e".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.e1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "04c".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.c2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a4Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b4Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05c - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05d".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.d3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05e".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.e2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05f".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.f1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05g".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.gScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05h".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.hScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "05j - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "06a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a5Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a6Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b6Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a7Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08b".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.b7Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08c".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.c4Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08d".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.d4Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08e".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.e3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08f".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.f2Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08g".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.g1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08h".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.h1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08i".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.i1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "09a - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "09d".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.d5Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10a".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.a9Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10c".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.c6Screen),
                        ),
                      ],
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
