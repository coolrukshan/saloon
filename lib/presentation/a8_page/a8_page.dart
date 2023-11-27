import '../a8_page/widgets/rectangle2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

// ignore_for_file: must_be_immutable
class A8Page extends StatefulWidget {
  const A8Page({Key? key})
      : super(
          key: key,
        );

  @override
  A8PageState createState() => A8PageState();
}

class A8PageState extends State<A8Page>
    with AutomaticKeepAliveClientMixin<A8Page> {
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
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup388,
                        height: 79.v,
                        width: 272.h,
                        margin: EdgeInsets.only(left: 36.h),
                      ),
                      SizedBox(height: 41.v),
                      SizedBox(
                        width: 99.h,
                        child: Divider(
                          indent: 5.h,
                        ),
                      ),
                      SizedBox(height: 130.v),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                        decoration: BoxDecoration(
                          color: appTheme.green500,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                        decoration: BoxDecoration(
                          color: appTheme.green500,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 28.v),
                      _buildZulaufGreen(context),
                      SizedBox(height: 55.v),
                      _buildRectangle(context),
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
  Widget _buildZulaufGreen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 20.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            height: 41.v,
            width: 221.h,
            margin: EdgeInsets.only(
              top: 28.v,
              bottom: 25.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img614fb9c921f4748,
            height: 94.adaptSize,
            width: 94.adaptSize,
            margin: EdgeInsets.only(left: 20.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangle(BuildContext context) {
    return SizedBox(
      height: 72.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 47.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 8.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Rectangle2ItemWidget();
        },
      ),
    );
  }
}
