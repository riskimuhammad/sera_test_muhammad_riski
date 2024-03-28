import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_muhammad_riski/app.dart';
import 'package:test_muhammad_riski/core/utils/depedency.dart';

void main() async {
  await GetStorage.init('box-test-riski');
  WidgetsFlutterBinding.ensureInitialized();
  Depedency.init();
  runApp(const App());
}
