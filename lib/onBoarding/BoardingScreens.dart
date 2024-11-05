import 'package:flutter/material.dart';

class BoardingScreens extends StatelessWidget {
  final String imageResource;
  final String title;
  final String? btnTitle;
  final void Function()? btnFunc;
  final Color bgColor;

  const BoardingScreens({
    super.key,
    required this.imageResource,
    required this.title,
    this.btnTitle,
    this.btnFunc,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageResource),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 100,
            ),

            if(btnTitle != null)
            ElevatedButton(
              onPressed: btnFunc!,
              child: Text(btnTitle!),
            )
          ],
        ),
      ),
    );
  }
}
