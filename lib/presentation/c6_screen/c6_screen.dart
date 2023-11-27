import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';
import 'package:saloonnew/widgets/custom_radio_button.dart';

class C6Screen extends StatelessWidget {
  C6Screen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5002,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFiftyNine(context),
                _buildFiftyEight(context),
                Opacity(
                  opacity: 0.7,
                  child: Divider(
                    color: appTheme.black90001.withOpacity(0.35),
                  ),
                ),
                SizedBox(height: 292.v),
                _buildCardBitcoin(context),
                SizedBox(height: 16.v),
                _buildIcradio(context),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup526WhiteA700,
                  height: 80.v,
                  width: 343.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                SizedBox(height: 40.v),
                CustomIconButton(
                  height: 44.v,
                  width: 311.h,
                  child: CustomImageView(),
                ),
                SizedBox(height: 47.v),
                CustomImageView(
                  imagePath: ImageConstant.imgNounTouchId1801225,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                ),
                SizedBox(height: 91.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 10.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup247,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgBatteryBlack90001,
            height: 11.v,
            width: 24.h,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 25.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcBack,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup115,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4314x375,
                height: 90.v,
                width: 100.h,
                margin: EdgeInsets.only(top: 9.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup435,
                height: 44.v,
                width: 36.h,
                margin: EdgeInsets.only(bottom: 55.v),
              ),
            ],
          ),
          SizedBox(height: 45.v),
          Container(
            width: 335.h,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 43.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillGray200.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgNounCalendar2577480,
              height: 21.adaptSize,
              width: 21.adaptSize,
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardBitcoin(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineDeeporange4001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCreditCardVisa,
            height: 48.v,
            width: 49.h,
            margin: EdgeInsets.only(left: 6.h),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 13.v),
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIcradio(BuildContext context) {
    return Container(
      width: 343.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomRadioButton(
        width: 22.h,
        value: "",
        groupValue: radioGroup,
        isRightCheck: true,
        onChange: (value) {
          radioGroup = value;
        },
      ),
    );
  }
}
