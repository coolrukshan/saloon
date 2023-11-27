import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore: must_be_immutable
class CdbcfItemWidget extends StatelessWidget {
  const CdbcfItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 64.adaptSize,
          width: 64.adaptSize,
          margin: EdgeInsets.only(bottom: 6.v),
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.outlineDeepOrange.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder32,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img6717563c1db1c6f,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
