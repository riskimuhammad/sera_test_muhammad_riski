import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';
import 'package:test_muhammad_riski/presentation/screens/product/widget/appbar_product.dart';
import 'package:test_muhammad_riski/presentation/screens/product/widget/list_category.dart';
import 'package:test_muhammad_riski/presentation/screens/product/widget/list_product.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final _controller = Get.find<ProductController>();
  final _category = ListCategory();
  final _appbar = AppbarProduct();
  final _listProduct = ListProduct();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(initState: (state) {
      _controller.sessionData();
      _controller.getAllCategory();
      _controller.getProduct();
    }, builder: (controller) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(270),
          child: AppBar(
            leadingWidth: 65,
            leading: Obx(
              () => _appbar.leading(controller.dataUser.value),
            ),
            centerTitle: true,
            title: _appbar.title(),
            actions: _appbar.action(),
            flexibleSpace: Stack(
              children: [
                Positioned(
                    bottom: 20,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() =>
                            _appbar.info("${_controller.firstname.value}")),
                        Obx(() => _category.category(context,
                            listCategories: controller.listCategories))
                      ],
                    )),
              ],
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: Obx(() {
            if (controller.loadingProduct.isTrue && controller.initial.isTrue) {
              return _listProduct.loadingProduct();
            } else {
              return _listProduct.productLoaded(
                  controller.listProduct, controller.scrollController.value);
            }
          }),
        ),
      );
    });
  }
}
