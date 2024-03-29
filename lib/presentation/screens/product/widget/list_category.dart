import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';
import '../../../../core/extensions/material_color.dart';

class ListCategory {
  final _controller = Get.find<ProductController>();
  category(context, {required List<dynamic> listCategories, onPressAll}) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    backgroundColor: MaterialStateProperty.all(
                        _controller.selectedCategories.isEmpty
                            ? MColors.blue.shade800
                            : MColors.blue.shade100.withOpacity(.1))),
                onPressed: onPressAll,
                child: Text('All', style: MTextStyle.textStyleFZ15W400)),
            SizedBox(width: 10),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listCategories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    _controller.getProductByCategories(listCategories[index]),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _controller.selectedCategories ==
                              listCategories[index]
                          ? MColors.blue.shade800
                          : MColors.blue.shade100.withOpacity(.1)),
                  child: Text(listCategories[index],
                      style: MTextStyle.textStyleFZ15W400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
