import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/models/product/product_model.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/entity/product/category_entity.dart';
import 'package:test_muhammad_riski/domain/entity/product/product_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

class ProductController extends GetxController {
  LocalRepository localRepository;
  Repository repository;
  ProductController(this.localRepository, this.repository);

  Rx<SigninEntity> dataUser = SigninEntity.fromJson({}).obs;
  RxList<CategoryEntity> listCategories = <CategoryEntity>[].obs;
  RxList<ProductEntity> listProduct = <ProductEntity>[].obs;
  RxBool loadingProduct = false.obs;

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

  getProduct() async {
    loadingProduct.value = true;
    final model = ProductModel(limit: '10', offset: '0');
    final result = await repository.getProduct(model);
    result.when(
      success: (data, url, headers, statusCode) {
        listProduct.value = productEntityFromJson(data);
        Future.delayed(Duration(seconds: 2), () {
          loadingProduct.value = false;
        });
      },
      error: (data, url, headers, statusCode) {
        loadingProduct.value = false;
      },
      failure: (networkException) {
        loadingProduct.value = false;
      },
    );
    loadingProduct.refresh();
  }
}
