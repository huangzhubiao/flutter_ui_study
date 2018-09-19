import 'package:flutter/material.dart';
import 'package:flutter_statusbar/flutter_statusbar.dart';

class GlobalConfig {
  static bool dark = true;
  // static ThemeData themeData = new ThemeData(backgroundColor: Colors.red);
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
  static Future<double> statusHeight = FlutterStatusbar.height;
}