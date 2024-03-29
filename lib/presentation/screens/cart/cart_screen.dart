import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/material_color.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';
import 'package:test_muhammad_riski/presentation/screens/cart/widget/list_cart.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final controller = Get.find<ProductController>();
  final _listCart = ListCart();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(initState: (state) {
      controller.getChartUser();
    }, builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Shopping Cart',
            style: MTextStyle.textStyleFZ18CDarkBlueBold,
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.delete_outline_rounded))
          ],
        ),
        body: Stack(
          children: [
            Positioned(
                left: 16,
                right: 16,
                bottom: 60,
                top: 0,
                child: Obx(() {
                  if (controller.loadingCart.isTrue) {
                    return _listCart.loadingListCart();
                  } else {
                    return _listCart.loadedListCart(controller.listProductCart);
                  }
                })),
            _buttonCheckOut()
          ],
        ),
      );
    });
  }

  _buttonCheckOut() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 16),
          height: 80,
          child: SizedBox(
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStateProperty.all(
                        MColors.primaryColorsPrimary)),
                onPressed: () => controller.addCart(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Processed Checkout',
                      style: MTextStyle.textStyleNormalCWhite,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_back,
                              color: MColors.white,
                            )))
                  ],
                )),
          ),
        ));
  }
}
