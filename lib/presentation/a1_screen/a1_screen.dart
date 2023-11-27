import '../a1_screen/widgets/slidenineteen_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class A1Screen extends StatelessWidget {
  A1Screen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 406.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildSlideNineteen(context),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup50,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: _buildFiftyOne(context),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: appTheme.deepOrange300,
                    dotColor: appTheme.gray500,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 81.v),
              CustomImageView(
                imagePath: ImageConstant.imageNotFound,
                height: 44.v,
                width: 311.h,
              ),
              SizedBox(height: 59.v),
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

  /// Section Widget
  Widget _buildSlideNineteen(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 406.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 1,
      itemBuilder: (context, index, realIndex) {
        return SlidenineteenItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
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
          SizedBox(height: 48.v),
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
