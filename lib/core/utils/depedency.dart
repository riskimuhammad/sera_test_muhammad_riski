import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/providers/network/contract.dart';
import 'package:test_muhammad_riski/data/providers/network/http/http_implementation.dart';
import 'package:test_muhammad_riski/data/providers/network/implementation.dart';
import 'package:test_muhammad_riski/data/repository_impl/repository_impl.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

import '../../data/providers/network/http/http_contract.dart';

class Depedency {
  static init() {
    Get.lazyPut<HttpNetwork>(() => HttpNetworkImplementation(), fenix: true);
    Get.lazyPut<Network>(() => NetworkImplementation(Get.find<HttpNetwork>()));
    Get.lazyPut<Repository>(
        () => RepositoryImplementation(Get.find<Network>()));
  }
}