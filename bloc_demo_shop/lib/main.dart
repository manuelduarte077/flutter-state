import 'package:bloc_demo_shop/app/app.dart';
import 'package:bloc_demo_shop/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = AppObserver();

  runApp(const StoreApp());
}
