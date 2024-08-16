import 'package:bookly_app/app/bookly_app.dart';
import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const BooklyApp());
}
