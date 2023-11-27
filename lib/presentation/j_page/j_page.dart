import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore_for_file: must_be_immutable
class JPage extends StatefulWidget {
  const JPage({Key? key})
      : super(
          key: key,
        );

  @override
  JPageState createState() => JPageState();
}

class JPageState extends State<JPage>
    with AutomaticKeepAliveClientMixin<JPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 65.v),
                Padding(
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
                              decoration:
                                  AppDecoration.outlineDeeporange400.copyWith(
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
                      _buildWidget(context),
                      SizedBox(height: 24.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup515,
                        height: 79.v,
                        width: 343.h,
                      ),
                      SizedBox(height: 25.v),
                      Container(
                        height: 44.v,
                        width: 311.h,
                        margin: EdgeInsets.only(left: 16.h),
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
  Widget _buildWidget(BuildContext context) {
    return Container(
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
    );
  }
}
