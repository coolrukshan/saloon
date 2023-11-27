import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:saloonnew/presentation/j_page/j_page.dart';

class JTabContainerScreen extends StatefulWidget {
  const JTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  JTabContainerScreenState createState() => JTabContainerScreenState();
}

class JTabContainerScreenState extends State<JTabContainerScreen>
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
                CustomImageView(
                  imagePath: ImageConstant.imgNavigationBar,
                  height: 88.v,
                  width: 375.h,
                ),
                SizedBox(height: 61.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup499,
                  height: 83.v,
                  width: 342.h,
                ),
                SizedBox(height: 57.v),
                Container(
                  height: 26.v,
                  width: 179.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 26.v,
                          width: 27.h,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 26.v,
                          width: 27.h,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 26.v,
                          width: 27.h,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 26.v,
                          width: 27.h,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroupBlueGray100,
                          height: 26.v,
                          width: 27.h,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 564.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      JPage(),
                      JPage(),
                      JPage(),
                      JPage(),
                      JPage(),
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
}
