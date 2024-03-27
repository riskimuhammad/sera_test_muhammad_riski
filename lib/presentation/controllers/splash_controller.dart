import 'dart:async';

import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  moveToSigninPage() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoutes.signin);
    });
  }
}
