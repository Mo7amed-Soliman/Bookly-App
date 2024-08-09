import 'package:bookly_app/core/theme/get_dark_theme.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookly App',
      debugShowCheckedModeBanner: false,
      theme: getDarkTheme(),
      home: const Scaffold(),
    );
  }
}
