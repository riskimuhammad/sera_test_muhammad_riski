import 'dart:async';

import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  moveToSigninPage() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      Get.to(AppRoutes.signin);
    });
  }
}
