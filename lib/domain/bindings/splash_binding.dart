import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
  }
}
