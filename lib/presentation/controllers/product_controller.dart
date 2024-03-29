import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/models/auth/signin_model.dart';
import 'package:test_muhammad_riski/data/models/product/product_model.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/entity/product/product_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

class ProductController extends GetxController {
  LocalRepository localRepository;
  Repository repository;
  ProductController(this.localRepository, this.repository);

  Rx<SigninEntity> dataUser = SigninEntity.fromJson({}).obs;
  RxList categories = [].obs;
  RxList<ProductEntity> listProduct = <ProductEntity>[].obs;
  RxBool loadingProduct = false.obs;
  RxBool initial = true.obs;
  RxString firstname = ''.obs;
  RxString lastname = ''.obs;
  Rx<ScrollController> scrollController = ScrollController().obs;
  RxInt limit = 10.obs;
  RxString selectedCategories = ''.obs;

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
    final result = await repository.getAllCategory();
    result.when(
      success: (data, url, headers, statusCode) {
        categories.value = jsonDecode(data);
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

  getProductByCategories(String categories) async {
    selectedCategories.value = categories;
    initial.value = true;
    loadingProduct.value = true;
    final result = await repository.getProductByCategories(categories);
    result.when(
      success: (data, url, headers, statusCode) {
        log('datanya ${data} ${url}');
        listProduct.value = productEntityFromJson(data);
        Future.delayed(Duration(seconds: 2), () {
          initial.value = false;
          loadingProduct.value = false;
        });
      },
      error: (data, url, headers, statusCode) {
        log('datanya ${data} ${url}');
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
      if (selectedCategories.isEmpty) {
        getProduct();
      }
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
