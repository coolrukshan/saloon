import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class A3Screen extends StatelessWidget {
  const A3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 54.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcBack,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 95.v),
              CustomImageView(
                imagePath: ImageConstant.imgRepeatGrid2,
                height: 366.v,
                width: 327.h,
              ),
              SizedBox(height: 39.v),
              CustomIconButton(
                height: 44.v,
                width: 311.h,
                child: CustomImageView(),
              ),
              SizedBox(height: 16.v),
              CustomImageView(
                height: 35.v,
                width: 311.h,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
