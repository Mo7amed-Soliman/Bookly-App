import 'package:bookly_app/core/functions/status_bar.dart';
import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/theme/get_dark_theme.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Status Bar (Transparent)
    statusBar();
    return MaterialApp.router(
      title: kAppTitle,
      debugShowCheckedModeBanner: false,
      theme: getDarkTheme(),
      routerConfig: router,
    );
  }
}
