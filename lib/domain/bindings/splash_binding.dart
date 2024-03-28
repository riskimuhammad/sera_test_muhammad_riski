import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/presentation/controllers/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
        () => SplashController(Get.find<LocalRepository>()),
        fenix: true);
  }
}
