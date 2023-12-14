import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/welcome/widgets.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends StatelessWidget {
  Welcome({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    onBoardingPage(
                      _controller,
                      imagePath: 'assets/images/reading.png',
                      title: 'Visual learning!',
                      subTitle: 'Forget about pen and paper, now learn all in one place.',
                      index: 1,
                    ),
                    onBoardingPage(
                      _controller,
                      imagePath: 'assets/images/man.png',
                      title: 'Study time!',
                      subTitle: 'Explore the world of wonders by expanding your knowledge.',
                      index: 2,
                    ),
                    onBoardingPage(
                      _controller,
                      imagePath: 'assets/images/boy.png',
                      title: 'Always Stay Fascinated!',
                      subTitle: 'Anywhere, anytime, anyone. Embrace the learner mindset.',
                      index: 3,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
