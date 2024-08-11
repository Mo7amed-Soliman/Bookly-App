import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle textW600Style18 = TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      textW500Style16 = TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      textStyle14 = TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      textStyle20 = TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textStyle30 = TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontFamily: kGTSectraFine,
        fontWeight: FontWeight.normal,
      );
}
