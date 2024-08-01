import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyle {
  static Color primaryColor = const Color(0xFF687daf);

  static Color textColor = const Color(0xFF3b3b3b);

  static Color logoColor = const Color(0xffbfc205);

  static Color bgColor = const Color(0xffeeedf2);

  static Color offWhiteColor = const Color(0xfff4f6fd);

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: textColor,
  );

  static TextStyle headLineStyle2 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: textColor,
  );
}
