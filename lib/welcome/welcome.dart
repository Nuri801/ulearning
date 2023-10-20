import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/welcome/widgets.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              onBoardingPage(
                imagePath: 'assets/images/reading.png',
                firstText: 'Study time',
                secondText: 'Explore the world of wonders by expanding your knowledge',
              ),
              onBoardingPage(
                imagePath: 'assets/images/man.png',
                firstText: 'Study time',
                secondText: 'Explore the world of wonders by expanding your knowledge',
              ),
              onBoardingPage(
                imagePath: 'assets/images/boy.png',
                firstText: 'Study time',
                secondText: 'Explore the world of wonders by expanding your knowledge',
              ),
            ],
          )
        ],
      ),
    );
  }

}
