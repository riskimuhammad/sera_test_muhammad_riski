import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

import '../../data/providers/local/box/local_contract.dart';
import '../../data/providers/local/box/local_implementation.dart';
import '../../data/providers/local/contract.dart';
import '../../data/providers/local/implementation.dart';
import '../../data/providers/network/contract.dart';
import '../../data/providers/network/http/http_contract.dart';
import '../../data/providers/network/http/http_implementation.dart';
import '../../data/providers/network/implementation.dart';
import '../../data/repository_impl/local_repository_impl.dart';
import '../../data/repository_impl/repository_impl.dart';
import '../../presentation/controllers/product_controller.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    // CALLBACK KARNA SEBELUMNYA SUDAH DI OFF OLEH GetOffEndTo
    Get.lazyPut<HttpNetwork>(() => HttpNetworkImplementation(), fenix: true);
    Get.lazyPut<Network>(() => NetworkImplementation(Get.find<HttpNetwork>()));
    Get.lazyPut<Repository>(
        () => RepositoryImplementation(Get.find<Network>()));
    Get.lazyPut<BoxContract>(() => BoxContractImplementation());
    Get.lazyPut<Box>(() => BoxImplementation(Get.find<BoxContract>()));
    Get.lazyPut<LocalRepository>(() => LocalRepositoryImpl(Get.find<Box>()));
    Get.lazyPut<ProductController>(
        () => ProductController(
            Get.find<LocalRepository>(), Get.find<Repository>()),
        fenix: true);
  }
}
