import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/entity/product/category_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

class ProductController extends GetxController {
  LocalRepository localRepository;
  Repository repository;
  ProductController(this.localRepository, this.repository);

  Rx<SigninEntity> dataUser = SigninEntity.fromJson({}).obs;
  RxList<CategoryEntity> listCategories = <CategoryEntity>[].obs;

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

  getAllCategory() async {
    List<String> allowedExtensions = ['jpg', 'jpeg', 'png'];
    final result = await repository.getAllCategory();
    result.when(
      success: (data, url, headers, statusCode) {
        listCategories.value = categoryEntityFromJson(data).where((element) {
          //FILTER DATA DENGAN EKTENSI IMG, UNTUK MENGAMBIL DATA YANG ADA GAMBAR SAJA
          String image = element.image ?? '';
          String extension = image.split('.').last.toLowerCase();
          return allowedExtensions.contains(extension);
        }).toList();
      },
      error: (data, url, headers, statusCode) {},
      failure: (networkException) {},
    );
  }
}
