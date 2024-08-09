import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kBackgroundColor,
  );
}
