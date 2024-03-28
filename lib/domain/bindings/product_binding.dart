import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';

import '../../presentation/controllers/product_controller.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
        () => ProductController(Get.find<LocalRepository>()),
        fenix: true);
  }
}
