import 'package:flutter/material.dart';
import '../common/widgets.dart';
Widget onBoardingPage({
  required String imagePath,
  required String firstText,
  required String secondText,
}) {


  return Column(
    children: [
      Image.asset(imagePath),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            text24normal(text: firstText),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: text16normal(text: secondText),
            ),
          ],
        ),
      )
    ],
  );
}
