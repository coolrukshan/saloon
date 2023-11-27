import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/a8_page/a8_page.dart';

class ATabContainerScreen extends StatefulWidget {
  const ATabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ATabContainerScreenState createState() => ATabContainerScreenState();
}

class ATabContainerScreenState extends State<ATabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildCombinedShape(context),
                SizedBox(
                  height: 605.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      A8Page(),
                      A8Page(),
                      A8Page(),
                      A8Page(),
                      A8Page(),
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
  Widget _buildCombinedShape(BuildContext context) {
    return SizedBox(
      height: 281.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 78.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup68,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: 17.v,
                width: 124.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCombinedShape,
                        height: 17.v,
                        width: 18.h,
                      ),
                    ),
                    Tab(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCombinedShape,
                        height: 17.v,
                        width: 18.h,
                      ),
                    ),
                    Tab(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCombinedShape,
                        height: 17.v,
                        width: 18.h,
                      ),
                    ),
                    Tab(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCombinedShape,
                        height: 17.v,
                        width: 18.h,
                      ),
                    ),
                    Tab(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCombinedShapeBlueGray100,
                        height: 17.v,
                        width: 18.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 189.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 140.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4314x375,
                            height: 140.v,
                            width: 375.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.h,
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
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgBattery,
                                    height: 11.v,
                                    width: 24.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  SizedBox(height: 26.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcBackWhiteA700,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  SizedBox(height: 45.v),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBitmap64x64,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(
                                right: 5.h,
                                bottom: 5.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green500,
                                borderRadius: BorderRadius.circular(
                                  9.h,
                                ),
                                border: Border.all(
                                  color: appTheme.whiteA700,
                                  width: 2.h,
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup400,
                    height: 24.v,
                    width: 47.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
