import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/extensions/network_image.dart';

import '../../../../core/extensions/text_style.dart';
import '../../../../domain/entity/auth/signin_entity.dart';

class AppbarProduct {
  leading(SigninEntity? dataUser) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: NetworkImageExtemsion.image(dataUser!.avatar, isProfile: true),
        ),
      ),
    );
  }

  title() {
    return Text.rich(TextSpan(children: [
      TextSpan(text: 'Shop', style: MTextStyle.textStyleFZ18CAmberBold),
      TextSpan(text: 'store', style: MTextStyle.textStyleFZ18CDarkBlueBold)
    ]));
  }

  List<Widget> action() {
    return [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      SizedBox(width: 4),
    ];
  }

  info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi, Jhon', style: MTextStyle.textStyleFZ15W300),
        Text('What are you looking for today?',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MTextStyle.textStyleFZ28W500),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}