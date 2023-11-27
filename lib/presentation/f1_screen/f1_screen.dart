import '../f1_screen/widgets/cdbcf3_item_widget.dart';
import '../f1_screen/widgets/spacer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';

class F1Screen extends StatelessWidget {
  F1Screen({Key? key})
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
              _buildIcFilter(context),
              SizedBox(height: 98.v),
              _buildCdbcf(context),
              SizedBox(height: 64.v),
              _buildSpacer(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildIcFilter(BuildContext context) {
    return Container(
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
    );
  }

  /// Section Widget
  Widget _buildCdbcf(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
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
                      return Cdbcf3ItemWidget();
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
          CustomImageView(
            height: 17.v,
            width: 70.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 71.v,
            ),
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
          CustomImageView(
            height: 17.v,
            width: 74.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 71.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0.v),
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
          return SpacerItemWidget();
        },
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
