import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import '../../../../core/extensions/material_color.dart';
import '../../../../domain/entity/product/category_entity.dart';

class ListCategory {
  category(context, {required List<CategoryEntity> listCategories}) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MColors.blue.shade800)),
              onPressed: () {},
              child: Text('All', style: MTextStyle.textStyleFZ15W400)),
          SizedBox(width: 10),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listCategories.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MColors.blue.shade100.withOpacity(.1)),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundImage:
                        NetworkImage("${listCategories[index].image}"),
                  ),
                  SizedBox(width: 5),
                  Text(listCategories[index].name ?? '',
                      style: MTextStyle.textStyleFZ15W400)
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
