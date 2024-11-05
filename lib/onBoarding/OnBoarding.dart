import 'package:appg2/MyHome.dart';
import 'package:appg2/onBoarding/BoardingScreens.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          BoardingScreens(
            imageResource:
                "https://i.pinimg.com/736x/5d/b1/7a/5db17ab1f8e0bad184cf9a879b46aaa3.jpg",
            title: "Free Food Delivery",
            bgColor: Color.fromARGB(255, 255, 204, 187),
          ),
          BoardingScreens(
            imageResource:
                "https://t3.ftcdn.net/jpg/01/22/58/12/360_F_122581223_u5XLc3TxGbWkV6FF6s37yVaH04dXBCev.jpg",
            title: "24/7 Service",
            bgColor: Color.fromARGB(255, 255, 255, 255),
          ),
          BoardingScreens(
            imageResource:
                "https://img.freepik.com/free-vector/hand-drawn-pizza-cartoon-illustration_52683-131040.jpg",
            title: "Hot and Spicy Pizza",
            bgColor: Color.fromARGB(255, 252, 237, 208),
          ),
          BoardingScreens(
            imageResource:
                "https://img.freepik.com/free-photo/appetizing-slice-pizza-flat-lay-generative-ai_169016-28936.jpg",
            title: "Free Coupons",
            bgColor: Color.fromARGB(255, 206, 226, 207),
            btnTitle: "Go To Home Page",
            btnFunc: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MyHome()));
            },
          ),
        ],
      ),
    );
  }
}
