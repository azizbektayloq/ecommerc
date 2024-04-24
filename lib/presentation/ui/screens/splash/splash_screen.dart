import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/resources/app_images.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboardingscreen.dart';
import 'package:ecommerce/presentation/ui/widget/w_brand_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/appStyles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    navigate();
  }

  Future<void> navigate() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Column(
            children: [
              SvgPicture.asset(
                AppImages.logoSvg,
                width: 140,
              ),
              WBrandName(),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(5),
          )
        ],
      ),
    );
  }

  _getDots(int n) => List.generate(
        n,
        (index) {
          double s = 100 / n;
          double remainder = 100 - (index * s);
          double opacity = remainder / 100;
          return Container(
            width: 12,
            height: 12,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(opacity),
              shape: BoxShape.circle,
            ),
          );
        },
      );
}
