import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void statusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
    ),
  );
}
