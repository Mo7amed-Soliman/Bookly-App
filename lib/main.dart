import 'package:bookly_app/app/bookly_app.dart';
import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/core/utils/my_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupGetIt();
  Bloc.observer = AppBlocObservers();
  runApp(const BooklyApp());
}
