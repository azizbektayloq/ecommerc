import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/resources/app_images.dart';
import 'package:ecommerce/presentation/ui/screens/login/reset_password.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/appStyles.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(),
          Column(
            children: [
              SvgPicture.asset(
                AppImages.logoSvg,
                width: 140,
              ),
              Column(
                children: [
                  Text(
                    'Forget',
                    style: Styles.getLogoTextStyle()
                        .copyWith(color: AppColors.black),
                  ),
                  Text(
                    'Forget your password',
                    style: Styles.getOnBoardingSubTitle(),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Please enter your email address below you will receive a link to create a new password via email",
                    ),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email Adress",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ResetPasswordScreen(),
                        ),
                      );
                    },
                    child: Container(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      child: Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
