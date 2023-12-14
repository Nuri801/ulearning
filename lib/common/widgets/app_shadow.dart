import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15,
  double sR = 2,
  double bR = 3,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 2),
      )
    ],
  );
}