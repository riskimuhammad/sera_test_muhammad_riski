import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/curr_number.dart';
import 'package:test_muhammad_riski/core/extensions/material_color.dart';
import 'package:test_muhammad_riski/core/extensions/network_image.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class DetailProductScreen extends StatelessWidget {
  DetailProductScreen({super.key});
  final controller = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
            )),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(AppRoutes.cart),
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ))
        ],
      ),
      body: Stack(
        children: [
          Obx(() {
            if (controller.detailLoading.isTrue) {
              return _detailLoading(context);
            } else {
              return _detailValue(context);
            }
          }),
          Obx(
            () => _buttonAddCart(),
          )
        ],
      ),
    );
  }

  _detailLoading(context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 15,
                    width: 100,
                    decoration: BoxDecoration(
                        color: MColors.primaryColorsGrey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MColors.primaryColorsGrey.shade800,
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width - 200,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: MColors.primaryColorsGrey.shade800,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 15,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: MColors.primaryColorsGrey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade800,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _detailValue(context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() => Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    child: NetworkImageExtemsion.image(
                      controller.productEntity.value.image,
                    ),
                  )),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(
                        CurrFormatedNumber.formated(
                            controller.productEntity.value.price),
                        style: MTextStyle.textStyleFZ18CDarkBlueBold,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: MColors.blue,
                      ))
                ],
              ),
              Obx(() => Text(
                    controller.productEntity.value.title ?? '',
                    style: MTextStyle.textStyleFZ20W500,
                  )),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: MColors.amber,
                  ),
                  Obx(() => Text(
                      "${controller.productEntity.value.rating!['rate']}")),
                  SizedBox(
                    width: 10,
                  ),
                  Obx(() => Text(
                      "${controller.productEntity.value.rating!['count']} Reviews"))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() => Text(controller.productEntity.value.description ?? '')),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buttonAddCart() {
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
                child: controller.addCartLoading.isTrue
                    ? Icon(
                        Icons.check_circle,
                        color: MColors.white,
                      )
                    : Text(
                        'Add to Chart',
                        style: MTextStyle.textStyleNormalCWhite,
                      )),
          ),
        ));
  }
}
