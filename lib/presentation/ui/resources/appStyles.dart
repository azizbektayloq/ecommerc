import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class Styles {
  static TextStyle getLogoTextStyle() => const TextStyle(
        fontSize: 38,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w800,
      );

  static TextStyle getTextActionStyle() => const TextStyle(
        fontSize: 38,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w700,
      );

  static TextStyle getOnBoardingTitle() => const TextStyle(
        fontSize: 26,
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      );

  static TextStyle getOnBoardingSubTitle() => const TextStyle(
        fontSize: 18,
        color: AppColors.lightGray,
        fontWeight: FontWeight.w500,
        height: 1.4,
      );
}
