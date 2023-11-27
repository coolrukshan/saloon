import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class CScreen extends StatelessWidget {
  const CScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img01c,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildEightyOne(context),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 208.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup12,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 96.adaptSize,
                        width: 96.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 27.h,
                          vertical: 20.v,
                        ),
                        decoration:
                            AppDecoration.gradientPinkAToDeepOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPath347,
                          height: 51.v,
                          width: 13.h,
                          alignment: Alignment.topRight,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup524,
                        height: 64.v,
                        width: 317.h,
                      ),
                      SizedBox(height: 17.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 17.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup12,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 37.v),
          CustomImageView(
            imagePath: ImageConstant.imgBattery,
            height: 11.v,
            width: 24.h,
          ),
        ],
      ),
    );
  }
}
