import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_muhammad_riski/app.dart';
import 'package:test_muhammad_riski/core/utils/depedency.dart';

void main() async {
  Depedency.init();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init('box-test-riski');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
