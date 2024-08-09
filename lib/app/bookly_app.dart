import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookly App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(),
    );
  }
}
