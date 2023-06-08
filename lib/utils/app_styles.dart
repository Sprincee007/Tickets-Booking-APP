import 'package:flutter/material.dart';
/// The primary color used throughout the app.
const Color primary = const Color(0xFF687daf);
/// A collection of styles used throughout the app.
class Styles{
  /// The primary color used throughout the app.
  static Color primaryColor = primary;

  /// The text color used throughout the app.
  static Color textColor = const Color(0xFF3b3b3b);

  /// The background color used throughout the app.
  static Color bgColor = const Color(0xFFeeedf2);

  /// An orange color used throughout the app.
  static Color orangeColor = const Color(0xFFF37B67);

  /// A khaki color used throughout the app.
  static Color kakiColor = const Color(0xFFd2bdb6);

  /// The default text style used throughout the app.
  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  /// The primary headline style used throughout the app.
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);

  /// The secondary headline style used throughout the app.
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);

  /// The tertiary headline style used throughout the app.
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  /// The small headline style used throughout the app.
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}