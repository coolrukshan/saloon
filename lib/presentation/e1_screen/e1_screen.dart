import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class E1Screen extends StatelessWidget {
  const E1Screen({Key? key})
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
              SizedBox(height: 87.v),
              CustomImageView(
                height: 65.v,
                width: 294.h,
              ),
              SizedBox(height: 47.v),
              Container(
                height: 44.v,
                width: 327.h,
                decoration: BoxDecoration(
                  color: appTheme.gray200,
                  borderRadius: BorderRadius.circular(
                    22.h,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Container(
                height: 44.v,
                width: 311.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(1, 0.5),
                    end: Alignment(0, 0.5),
                    colors: [
                      appTheme.deepOrange300,
                      appTheme.deepOrange400,
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
