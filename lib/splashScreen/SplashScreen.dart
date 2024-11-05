import 'dart:async';

import 'package:appg2/MyHome.dart';
import 'package:appg2/onBoarding/OnBoarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_pizza,
              size: 116,
              color: Colors.redAccent,
            ),
            Text(
              "Pizza Hut",
              style: TextStyle(fontFamily: 'Lexend', fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
