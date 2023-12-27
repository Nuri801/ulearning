import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/common/widgets/text_widgets.dart';

import '../utils/app_colors.dart';

Widget textField({
  String? title,
  TextEditingController? controller,
  IconData? prefixIcon,
  String? hintText,
  bool? isPassWord,
  void Function(String)? func,
}) {
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
            onChanged: (value) => func!(value),
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
