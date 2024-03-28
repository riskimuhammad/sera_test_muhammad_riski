import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class SplashController extends GetxController {
  LocalRepository localRepository;
  SplashController(this.localRepository);

  moveToSigninPage() {
    Future.delayed(Duration(seconds: 2), () {
      sessionChecker();
    });
  }

  sessionChecker() async {
    final res = await localRepository.getsession();
    res.when(
      success: (data) {
        final dataDecode = jsonDecode(data);
        if (dataDecode.isNotEmpty) {
          Get.offAndToNamed(AppRoutes.product);
        } else {
          Get.offAndToNamed(AppRoutes.signin);
        }
      },
      failure: (data) {},
    );
  }

  @override
  void onInit() {
    moveToSigninPage();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
