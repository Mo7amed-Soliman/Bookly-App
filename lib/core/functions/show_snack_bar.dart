import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

void showSnackBar(context, String message, {Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: AppStyles.textW500Style16,
        textAlign: TextAlign.center,
      ),
      backgroundColor: color ?? Colors.red.shade400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      behavior: SnackBarBehavior.floating, //! Set behavior to floating
      margin: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: 15,
      ),
      duration: const Duration(seconds: 10),
    ),
  );
}
