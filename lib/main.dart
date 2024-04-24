import 'package:ecommerce/presentation/ui/screens/home/home_screen.dart';
import 'package:ecommerce/presentation/ui/screens/login/login_screen.dart';
import 'package:ecommerce/presentation/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //SplashScreen(),
      //LoginScreen(),
    );
  }
}
