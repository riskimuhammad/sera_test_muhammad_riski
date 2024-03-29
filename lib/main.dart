import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_muhammad_riski/app.dart';
import 'package:test_muhammad_riski/core/utils/http_overrides.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init('box-test-riski');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
