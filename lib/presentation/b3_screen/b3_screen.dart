import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_icon_button.dart';

class B3Screen extends StatelessWidget {
  const B3Screen({Key? key})
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
              Spacer(
                flex: 25,
              ),
              CustomImageView(
                height: 43.v,
                width: 311.h,
              ),
              SizedBox(height: 39.v),
              CustomImageView(
                imagePath: ImageConstant.imgTxtField,
                height: 44.v,
                width: 327.h,
              ),
              Spacer(
                flex: 20,
              ),
              CustomIconButton(
                height: 44.v,
                width: 311.h,
                child: CustomImageView(),
              ),
              Spacer(
                flex: 54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
