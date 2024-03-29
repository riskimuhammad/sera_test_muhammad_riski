import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/domain/entity/product/product_entity.dart';

import '../../../../core/extensions/curr_number.dart';
import '../../../../core/extensions/material_color.dart';
import '../../../../core/extensions/network_image.dart';
import '../../../../core/extensions/text_style.dart';

class ListCart {
  loadingListCart() {
    return ListView.builder(
      itemBuilder: (context, index) => ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          height: 155,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MColors.white,
              boxShadow: [
                BoxShadow(
                    color: MColors.primaryColorsGrey.shade900,
                    blurRadius: 10,
                    offset: Offset(1, 1))
              ]),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                    color: MColors.primaryColorsGrey.shade900,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width - 200,
                      decoration: BoxDecoration(
                          color: MColors.primaryColorsGrey.shade900,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 15,
                      width: 100,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: MColors.primaryColorsGrey.shade900,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 15,
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width - 300,
                      decoration: BoxDecoration(
                          color: MColors.primaryColorsGrey.shade900,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: MColors.primaryColorsGrey.shade900,
                          shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  loadedListCart(List<ProductEntity> listProductCart) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listProductCart.length,
      itemBuilder: (context, index) => Container(
        height: 155,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MColors.white,
            boxShadow: [
              BoxShadow(
                  color: MColors.primaryColorsGrey.shade900,
                  blurRadius: 10,
                  offset: Offset(1, 1))
            ]),
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              height: 150,
              child: NetworkImageExtemsion.image(listProductCart[index].image),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      listProductCart[index].title ?? '',
                      style: MTextStyle.textStyleFZ15W400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    CurrFormatedNumber.formated(listProductCart[index].price),
                    style: MTextStyle.textStyleFZ15Bold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 5, top: 5, bottom: 5),
                                child: Text(
                                  '-',
                                  style: MTextStyle.textStyleFZ20Bold,
                                ),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${listProductCart[index].quantity}",
                            style: MTextStyle.textStyleFZ15W400,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                '+',
                                style: MTextStyle.textStyleFZ15Bold,
                              )),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline),
                        color: MColors.primaryColorsGrey.shade600,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
