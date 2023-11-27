import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class C5Bottomsheet extends StatelessWidget {
  const C5Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 62.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
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
                CustomImageView(
                  imagePath: ImageConstant.imgIcRadio,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 114.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 62.v),
          _buildRepeatGridEight(context),
          SizedBox(height: 34.v),
          CustomIconButton(
            height: 44.v,
            width: 311.h,
            child: CustomImageView(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRepeatGridEight(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          height: 316.v,
          width: 110.h,
          margin: EdgeInsets.only(
            top: 7.v,
            bottom: 12.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRepeatGrid9,
          height: 335.v,
          width: 201.h,
        ),
      ],
    );
  }
}
