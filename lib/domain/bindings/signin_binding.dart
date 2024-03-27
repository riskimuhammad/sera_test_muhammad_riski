import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';
import 'package:test_muhammad_riski/presentation/controllers/signin_controller.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(
        () => SigninController(Get.find<Repository>()),
        fenix: true);
  }
}
