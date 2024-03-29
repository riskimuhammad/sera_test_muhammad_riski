import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_muhammad_riski/data/models/auth/signin_model.dart';
import 'package:test_muhammad_riski/data/models/product/cart_model.dart';
import 'package:test_muhammad_riski/data/models/product/product_model.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/entity/product/product_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

class ProductController extends GetxController {
  LocalRepository localRepository;
  Repository repository;
  ProductController(this.localRepository, this.repository);

//LIST OR OBJECT
  Rx<SigninEntity> dataUser = SigninEntity.fromJson({}).obs;
  Rx<ProductEntity> productEntity = ProductEntity.fromJson({}).obs;
  RxList categories = [].obs;
  RxList<ProductEntity> listProduct = <ProductEntity>[].obs;
  RxList<ProductEntity> listProductCart = <ProductEntity>[].obs;

//STRING
  RxString firstname = ''.obs;
  RxString lastname = ''.obs;
  Rx<ScrollController> scrollController = ScrollController().obs;
  RxString selectedCategories = ''.obs;

  //INT
  RxInt limit = 10.obs;
  RxInt userId = 1.obs;

  //BOOL
  RxBool loadingProduct = false.obs;
  RxBool initial = true.obs;
  RxBool detailLoading = false.obs;
  RxBool addCartLoading = false.obs;
  RxBool loadingCart = false.obs;

  sessionData() async {
    final model = SigninModel(id: userId.value.toString());
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

  getProductById(id) async {
    detailLoading.value = true;
    final model = ProductModel(id: id.toString());
    final result = await repository.getProductById(model);
    result.when(
      success: (data, url, headers, statusCode) {
        productEntity.value = productEntitySingleFromJson(data);
        Future.delayed(Duration(seconds: 1), () {
          detailLoading.value = false;
        });
      },
      error: (data, url, headers, statusCode) {
        detailLoading.value = false;
      },
      failure: (networkException) {
        detailLoading.value = false;
      },
    );
    detailLoading.refresh();
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

  addCart() async {
    addCartLoading.value = true;
    final date = DateTime.now();
    final dateFormated = DateFormat('yyyy-MM-dd').format(date);
    final model = CartModel(
        userId: userId.value.toString(),
        date: dateFormated,
        products: [
          {"productId": productEntity.value.id, "quantity": 1}
        ]);
    final result = await repository.addCart(model);
    result.when(
      success: (data, url, headers, statusCode) {
        Future.delayed(Duration(seconds: 1));
        addCartLoading.value = false;
      },
      error: (data, url, headers, statusCode) {},
      failure: (networkException) {},
    );
  }

  getChartUser() async {
    loadingCart.value = true;
    listProductCart.clear();
    final result = await repository.getCart(userId.value.toString());
    result.when(
      success: (data, url, headers, statusCode) async {
        final product = jsonDecode(data);
        if (product != null)
          for (var element in product) {
            if (element.isNotEmpty)
              for (var i = 0; i < element['products'].length; i++) {
                final prd = element['products'][i];
                final model = ProductModel(id: prd['productId'].toString());
                final resultProductId = await repository.getProductById(model);
                resultProductId.when(
                  success: (data, url, headers, statusCode) {
                    var dataDecode = jsonDecode(data);
                    dataDecode.addAll({'quantity': prd['quantity']});
                    final productById = ProductEntity.fromJson(dataDecode);
                    listProductCart.add(productById);
                  },
                  error: (data, url, headers, statusCode) {},
                  failure: (networkException) {},
                );
              }
          }
        loadingCart.value = false;
      },
      error: (data, url, headers, statusCode) {
        loadingCart.value = false;
      },
      failure: (networkException) {
        loadingCart.value = false;
      },
    );
    loadingCart.refresh();
  }

  @override
  void onInit() {
    limit.value = 10;
    initial.value = true;
    scrollController.value.addListener(onScroll);
    super.onInit();
  }
}
