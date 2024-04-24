import 'package:ecommerce/presentation/ui/resources/appStyles.dart';
import 'package:ecommerce/presentation/ui/resources/app_colors.dart';
import 'package:ecommerce/presentation/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class PasswordChanges extends StatefulWidget {
  const PasswordChanges({super.key});

  @override
  State<PasswordChanges> createState() => _PasswordChangesState();
}

class _PasswordChangesState extends State<PasswordChanges> {
  void initState() {
    super.initState();
    navigate();
  }

  Future<void> navigate() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/png/Icon.png'),
          SizedBox(height: 8),
          Text(
            "Password Changed",
            style: Styles.getLogoTextStyle().copyWith(color: AppColors.black),
          ),
          Text("Password change succesfully"),
        ],
      ),
    );
  }
}
