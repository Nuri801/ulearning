import 'package:flutter/material.dart';
import 'package:ulearning/common/utils/app_colors.dart';
import 'package:ulearning/common/widgets/text_widgets.dart';

import '../welcome/widgets.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    // surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.black,
        height: 0.2,
      ),
    ),
    title: text16normal(
      text: title,
      color: AppColors.primaryText,
    ),
  );
}

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

Widget textField(
  String? title,
  TextEditingController? controller,
  IconData? prefixIcon,
  String? hintText,
  bool? isPassWord,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14normal(text: title ?? ""),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            onChanged: (value) {},
            obscureText: isPassWord ?? false,
            autocorrect: false,
            textInputAction: TextInputAction.done,
            style: const TextStyle(fontSize: 16),
            controller: controller,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              prefixIcon: Icon(prefixIcon),
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryElement),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white,
              hintStyle: const TextStyle(fontSize: 16, color: AppColors.primaryThirdElementText),
              hintText: hintText,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryBackground, width: 0.3),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              // helperText: 'PASSWORD'
            ),
          ),
        ),
      ],
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
