import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/resources/app_images.dart';
import 'package:ecommerce/presentation/ui/screens/login/sign_up.dart';
import 'package:ecommerce/presentation/ui/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/appStyles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    'Welcome back',
                    style: Styles.getLogoTextStyle()
                        .copyWith(color: AppColors.black),
                  ),
                  Text(
                    'Login to your account',
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
                  SizedBox(
                    height: 16,
                  ),
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
                  SizedBox(height: 16),
                  Text(
                    "Forget pasword",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                  SizedBox(height: 16),
                  Container(
                    color: AppColors.primaryColor,
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Or"),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                        Image.asset("assets/images/png/google 1.png"),
                        SizedBox(width: 4),
                        Text("Google"),
                      ]),
                      Row(children: [
                        Image.asset("assets/images/png/facebook 1.png"),
                        SizedBox(width: 4),
                        Text("Facebook"),
                      ]),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
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
