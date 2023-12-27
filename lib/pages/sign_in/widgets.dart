import 'package:flutter/material.dart';
import 'package:ulearning/common/utils/app_colors.dart';
import 'package:ulearning/common/widgets/text_widgets.dart';

import '../welcome/widgets.dart';

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(
      top: 20,
      bottom: 15,
      left: 40,
      right: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget explanationText(String explanation) {
  return Center(
    child: text14normal(text: explanation),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 40,
      height: 40,
      child: Image.asset(imagePath),
    ),
  );
}

Widget forgotPassWord() {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: GestureDetector(
      onTap: () {},
      child: const Text(
        "Forgot password?",
        style: TextStyle(
          fontSize: 14,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}

Widget button({
  String label = "",
  Color labelColor = Colors.white,
  Color foreGroundColor = AppColors.primaryElement,
  void Function()? onButtonPressed,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: SizedBox(
      height: 45,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: foreGroundColor,
            disabledBackgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.8, color: AppColors.primarySecondaryElementText),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: onButtonPressed,
          child: text16normal(text: label, color: labelColor)),
    ),
  );
}
