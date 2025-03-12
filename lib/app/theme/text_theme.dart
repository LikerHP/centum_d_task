import 'package:flutter/material.dart';

TextTheme getTextTheme(BuildContext context) {
  return TextTheme.of(context);
}

TextTheme get textTheme => TextTheme(
  displayLarge: TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  displayMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  titleLarge: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  titleMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),

  labelMedium: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
);
