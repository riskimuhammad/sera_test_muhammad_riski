import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/extensions/network_image.dart';

import '../../../../core/extensions/curr_number.dart';
import '../../../../core/extensions/material_color.dart';
import '../../../../core/extensions/text_style.dart';
import '../../../../domain/entity/product/product_entity.dart';

class ListProduct {
  productLoaded(List<ProductEntity> listProduct) {
    return GridView.builder(
        itemCount: listProduct.length,
        padding: EdgeInsets.only(bottom: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 350,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) => Container(
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
                  if (listProduct[index].images != null)
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: NetworkImageExtemsion.image(
                          listProduct[index].images!.first,
                          isProfile: false),
                    ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listProduct[index].title ?? '',
                          style: MTextStyle.textStyleNormalW400,
                        ),
                        SizedBox(height: 5),
                        Text(
                          CurrFormatedNumber.formated(listProduct[index].price),
                          style: MTextStyle.textStyleNormalW600,
                        )
                      ],
                    ),
                  )
                ],
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
