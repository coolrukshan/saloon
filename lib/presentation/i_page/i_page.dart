import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore_for_file: must_be_immutable
class IPage extends StatefulWidget {
  const IPage({Key? key})
      : super(
          key: key,
        );

  @override
  IPageState createState() => IPageState();
}

class IPageState extends State<IPage>
    with AutomaticKeepAliveClientMixin<IPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 65.v),
              _buildSpacer(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 100.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcRadio,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                Spacer(
                  flex: 43,
                ),
                Container(
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.outlineDeeporange400.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder11,
                  ),
                  child: Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.deepOrange400,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 56,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIcRadio,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 66.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup508,
            height: 20.v,
            width: 343.h,
          ),
          SizedBox(height: 66.v),
          Container(
            width: 359.h,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 40.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imageNotFound,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgComponent4722,
              height: 12.v,
              width: 14.h,
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            margin: EdgeInsets.only(right: 16.h),
            padding: EdgeInsets.symmetric(vertical: 7.v),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle222BlueGray100,
                  height: 32.v,
                  width: 108.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  margin: EdgeInsets.only(top: 33.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle222DeepOrange400,
                  height: 32.v,
                  width: 108.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 33.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle222BlueGray100,
                  height: 32.v,
                  width: 108.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 33.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
