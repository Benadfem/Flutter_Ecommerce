import 'package:flutter/material.dart';

final bPrimaryColor = Color(0xFF843667);
final bSecondaryColor = Color(0xFF022238);
final bThirdColor = Color(0xFFFDCBC);
final bLightBackground = Color(0xFFE8F6FB);
const bWhiteColor = Colors.white;
const bBlackColor = Colors.black;

class AppTheme {
  static const bBigTitle = TextStyle(
    color: bWhiteColor,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bBodyText = TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12.0,
  );

  static const bHeadingOne = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bSeeAll = TextStyle(
    color: bPrimaryColor,
  );
}
