import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/utils/depedency.dart';
import 'package:test_muhammad_riski/presentation/routes/app_pages.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Depedency(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      title: 'SERA TEST MUHAMMAD RISKI',
      getPages: AppPages.pages,
      initialRoute: AppRoutes.inital,
    );
  }
}
