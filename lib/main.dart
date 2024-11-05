import 'package:appg2/onBoarding/BoardingScreens.dart';
import 'package:appg2/onBoarding/OnBoarding.dart';
import 'package:appg2/splashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
