// import 'dart:ffi' hide Size;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ulearning/pages/sign_in/sign_in.dart';

import '../../common/widgets/app_shadow.dart';
import '../../common/widgets/text_widgets.dart';

// First get the FlutterView.
FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
// Dimensions in physical pixels (px)
Size size = view.physicalSize;
double width = size.width;
double height = size.height;

Widget onBoardingPage(
  PageController controller, {
  required String imagePath,
  required String title,
  required String subTitle,
  required int index,
  required BuildContext context,
}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            text24normal(text: title),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: text16normal(text: subTitle),
            ),
          ],
        ),
      ),
      _nextButton(
        controller,
        index,
        context,
      )
    ],
  );
}

Widget _nextButton(PageController controller, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 70,
      right: 30,
      left: 30,
    ),
    child: GestureDetector(
      onTap: () {
        if (index < 3) {
          controller.animateToPage(
            index,
            duration: const Duration(
              milliseconds: 600,
            ),
            curve: Curves.decelerate,
          );
        } else {
          Navigator.pushNamed(
            context,
            "signIn"
            // MaterialPageRoute(
            //   builder: (BuildContext context) => const SignIn(),
            // ),
          );
        }
      },
      child: Container(
        width: width,
        height: 45,
        decoration: appBoxShadow(),
        child: Center(
          child: text16normal(
            text: index < 3 ? "Next" : "Get Started",
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
