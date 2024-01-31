import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/pages/welcome/widgets.dart';

import 'notifier/welcome_notifier.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    print("+++ rebuild...");
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (value) {
                      ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      onBoardingPage(
                        _controller,
                        imagePath: 'assets/images/reading.png',
                        title: 'Visual learning!',
                        subTitle: 'Forget about pen and paper, now learn all in one place.',
                        index: 1,
                        context: context,
                      ),
                      onBoardingPage(
                        _controller,
                        imagePath: 'assets/images/man.png',
                        title: 'Study time!',
                        subTitle: 'Explore the world of wonders by expanding your knowledge.',
                        index: 2,
                        context: context,
                      ),
                      onBoardingPage(
                        _controller,
                        imagePath: 'assets/images/boy.png',
                        title: 'Always Stay Fascinated!',
                        subTitle: 'Anywhere, anytime, anyone. Embrace the learner mindset.',
                        index: 3,
                        context: context,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, top: 5),
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
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
