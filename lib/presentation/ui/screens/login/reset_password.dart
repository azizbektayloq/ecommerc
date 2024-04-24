import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/resources/app_images.dart';
import 'package:ecommerce/presentation/ui/screens/login/please_wait.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/appStyles.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                    'Reset',
                    style: Styles.getLogoTextStyle()
                        .copyWith(color: AppColors.black),
                  ),
                  Text(
                    'Reset your password',
                    style: Styles.getOnBoardingSubTitle(),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Enter Your New Password"),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "New password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Confirm password",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => PleaseWait(),
                        ),
                      );
                    },
                    child: Container(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      child: Text(
                        "Change password",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
