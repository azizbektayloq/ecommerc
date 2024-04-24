import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/resources/app_images.dart';
import 'package:ecommerce/presentation/ui/screens/login/forget.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/appStyles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    'Register',
                    style: Styles.getLogoTextStyle()
                        .copyWith(color: AppColors.black),
                  ),
                  Text(
                    'Create new a account',
                    style: Styles.getOnBoardingSubTitle(),
                  ),
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
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Phone number",
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
                        hintText: "Password",
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
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      text: "By singing below, you agree to the",
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              print("Salom");
                            },
                            child: Text(
                              'Team of use ',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                        WidgetSpan(
                          child: Text('and'),
                        ),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              print("Salom");
                            },
                            child: Text(
                              'privacy notice',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ],
                      style: TextStyle(color: AppColors.lightGray),
                    ),
                  ),
                  SizedBox(height: 6),
                  Container(
                    color: AppColors.primaryColor,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ForgetScreen()));
                      },
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              print("Salom");
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
                        ),
                      ],
                      style: TextStyle(color: AppColors.lightGray),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
