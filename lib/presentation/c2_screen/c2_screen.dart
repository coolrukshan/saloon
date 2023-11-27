import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/widgets/custom_pin_code_text_field.dart';

class C2Screen extends StatelessWidget {
  const C2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 54.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcBack,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Spacer(
                flex: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 48.h,
                  right: 49.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              Spacer(
                flex: 74,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
