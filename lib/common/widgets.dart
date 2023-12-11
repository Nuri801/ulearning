import 'package:flutter/material.dart';

Widget text24normal({required String text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 24,
      fontWeight: FontWeight.normal
    ),
  );
}
// this is a widget extraction:
Widget text16normal({required String text}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.normal
    ),
  );
}