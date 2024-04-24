import 'package:ecommerce/presentation/ui/screens/login/login_screen.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboarding_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../resources/appStyles.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_images.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController(initialPage: 0);
  int page = 0;
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: SizedBox(),
          ),
          GestureDetector(
            onTap: () {
              if (page != onboardingData.length - 1)
                setState(() {
                  page++;
                  controller.animateToPage(page,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                });
              else {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(),
                  ),
                );
              }
            },
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: 30, top: 30),
              child: Text(
                'Next',
                style: Styles.getTextActionStyle(),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (int index) {
                setState(() {
                  page = index;
                });
              },
              physics: BouncingScrollPhysics(),
              children: List.generate(
                onboardingData.length,
                (index) => _getPage(
                  onboardingData[index],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getDots(onboardingData.length, page),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  _getPage(OnBoardingData data) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              data.image,
              width: 343,
              height: height * 0.4,
            ),
            _getSpace(),
            Text(
              data.title,
              style: Styles.getOnBoardingTitle(),
            ),
            SizedBox(height: 24),
            Text(
              data.subtitle,
              style: Styles.getOnBoardingSubTitle(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  _getSpace() => SizedBox(
        height: height * 0.005,
      );

  _getDots(int n, int activeIndex) => List.generate(
        n,
        (index) {
          return Container(
            width: 12,
            height: 12,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: index == activeIndex
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          );
        },
      );
}
