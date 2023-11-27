import 'package:flutter/material.dart';
import 'package:saloonnew/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillLightBlueAA => BoxDecoration(
        color: appTheme.lightBlueA7001a,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001.withOpacity(0),
            appTheme.black90001.withOpacity(0.87),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack90001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001.withOpacity(0),
            appTheme.black90001.withOpacity(0.87),
          ],
        ),
      );
  static BoxDecoration get gradientBlackToBlack900011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001.withOpacity(0),
            appTheme.black90001.withOpacity(0.87),
          ],
        ),
      );
  static BoxDecoration get gradientDeepOrangeToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0.5),
          end: Alignment(0, 0.5),
          colors: [
            appTheme.deepOrange300,
            appTheme.deepOrange400,
          ],
        ),
      );
  static BoxDecoration get gradientPinkAToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.09),
          end: Alignment(0.95, 0.9),
          colors: [
            appTheme.pinkA200,
            appTheme.deepOrange400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrange => BoxDecoration(
        border: Border.all(
          color: appTheme.deepOrange400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeporange400 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.deepOrange400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeeporange4001 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.deepOrange400,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder83 => BorderRadius.circular(
        83.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL8 => BorderRadius.vertical(
        bottom: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    