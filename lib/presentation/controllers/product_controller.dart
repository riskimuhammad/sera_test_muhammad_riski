import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';

class ProductController extends GetxController {
  LocalRepository localRepository;
  ProductController(this.localRepository);

  Rx<SigninEntity> dataUser = SigninEntity.fromJson({}).obs;

  sessionData() async {
    final result = await localRepository.getsession();
    result.when(
      success: (data) {
        final dataDecode = json.decode(data);
        dataUser.value = SigninEntity.fromJson(dataDecode);
      },
      failure: (data) {},
    );
  }
}
