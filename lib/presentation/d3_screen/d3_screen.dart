import '../d3_screen/widgets/cdbcf1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/b5_page/b5_page.dart';
import 'package:saloonnew/presentation/c3_page/c3_page.dart';
import 'package:saloonnew/widgets/custom_bottom_bar.dart';

class D3Screen extends StatelessWidget {
  D3Screen({Key? key})
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
              _buildSixty(context),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_eye".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 3.v),
              _buildCdbcf(context),
              SizedBox(height: 63.v),
              _buildLooksUnisexSalon(context),
              SizedBox(height: 63.v),
              _buildSixtyOne(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
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
                      return Cdbcf1ItemWidget();
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
  Widget _buildSixtyOne(BuildContext context) {
    return SizedBox(
      height: 123.v,
      width: 360.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup1,
            height: 123.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              margin: EdgeInsets.only(
                top: 17.v,
                right: 16.h,
              ),
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
