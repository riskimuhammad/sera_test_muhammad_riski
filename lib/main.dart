import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/app.dart';
import 'package:test_muhammad_riski/core/utils/depedency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Depedency.init();
  runApp(const App());
}
