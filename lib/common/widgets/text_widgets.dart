import 'package:flutter/material.dart';
import 'package:ulearning/common/utils/app_colors.dart';

Widget text24normal({
  required String text,
  Color color = AppColors.primaryText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.normal),
  );
}

Widget text16normal({
  required String text,
  Color color = AppColors.primarySecondaryElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
  );
}

Widget text14normal({
  required String text,
  Color color = AppColors.primaryThirdElementText,
}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.normal),
  );
}
