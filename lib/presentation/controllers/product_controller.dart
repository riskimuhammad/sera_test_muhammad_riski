import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/models/auth/signin_model.dart';
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
  RxBool initial = true.obs;
  RxString firstname = ''.obs;
  RxString lastname = ''.obs;
  Rx<ScrollController> scrollController = ScrollController().obs;
  RxInt limit = 10.obs;

  sessionData() async {
    final model = SigninModel(id: '1');
    final result = await repository.getUserByID(model);
    result.when(
      success: (data, url, headers, statusCode) {
        dataUser.value = signinEntityFromJson(data);
        firstname.value = dataUser.value.name!['firstname'];
        lastname.value = dataUser.value.name!['lastname'];
      },
      error: (data, url, headers, statusCode) {},
      failure: (networkException) {},
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
    final model = ProductModel(limit: limit.value.toString(), offset: '0');
    final result = await repository.getProduct(model);
    result.when(
      success: (data, url, headers, statusCode) {
        listProduct.value = productEntityFromJson(data);
        Future.delayed(Duration(seconds: 2), () {
          initial.value = false;
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

  onScroll() {
    if (scrollController.value.position.pixels ==
        scrollController.value.position.maxScrollExtent) {
      limit.value += 10;
      getProduct();
    }
  }

  @override
  void onInit() {
    limit.value = 10;
    initial.value = true;
    scrollController.value.addListener(onScroll);
    super.onInit();
  }
}
