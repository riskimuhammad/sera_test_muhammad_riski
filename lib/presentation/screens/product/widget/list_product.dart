import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/network_image.dart';
import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

import '../../../../core/extensions/curr_number.dart';
import '../../../../core/extensions/material_color.dart';
import '../../../../core/extensions/text_style.dart';
import '../../../../domain/entity/product/product_entity.dart';

class ListProduct {
  final _controller = Get.find<ProductController>();
  productLoaded(List<ProductEntity> listProduct, controller) {
    return GridView.builder(
        controller: controller,
        itemCount: listProduct.length,
        padding: EdgeInsets.only(bottom: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 350,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                _controller.getProductById(listProduct[index].id);
                Get.toNamed(AppRoutes.detailProduct);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: MColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: MColors.primaryColorsGrey.shade900,
                          blurRadius: 5,
                          offset: Offset(1, 1))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: NetworkImageExtemsion.image(
                              listProduct[index].image),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listProduct[index].title ?? '',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: MTextStyle.textStyleNormalW400,
                          ),
                          SizedBox(height: 16),
                          Text(
                            CurrFormatedNumber.formated(
                                listProduct[index].price),
                            style: MTextStyle.textStyleNormalW600,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: MColors.amber,
                            size: 15,
                          ),
                          Text(
                            "${listProduct[index].rating!['rate']}",
                            style: MTextStyle.textStyleFZ13W400,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "${listProduct[index].rating!['count']} Reviews",
                            style: MTextStyle.textStyleFZ13W400,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  loadingProduct() {
    return GridView.builder(
      itemCount: 4,
      padding: EdgeInsets.only(bottom: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 350,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
                color: MColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: MColors.primaryColorsGrey.shade900,
                      blurRadius: 5,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: MColors.primaryColorsGrey.shade800,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 10,
                        decoration: BoxDecoration(
                            color: MColors.primaryColorsGrey.shade800,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 100,
                        height: 10,
                        decoration: BoxDecoration(
                            color: MColors.primaryColorsGrey.shade800,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 50,
                        height: 10,
                        decoration: BoxDecoration(
                            color: MColors.primaryColorsGrey.shade800,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
