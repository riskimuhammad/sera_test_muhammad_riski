import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import 'package:test_muhammad_riski/presentation/controllers/product_controller.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final _controller = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(initState: (state) {
      _controller.sessionData();
    }, builder: (controller) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            leadingWidth: 65,
            leading: Obx(
              () => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: CircleAvatar(
                  onBackgroundImageError: (exception, stackTrace) => SizedBox(),
                  backgroundImage:
                      NetworkImage('${_controller.dataUser.value.avatar}'),
                ),
              ),
            ),
            centerTitle: true,
            title: Text.rich(TextSpan(children: [
              TextSpan(text: 'Shop', style: MTextStyle.textStyleFZ18CAmberBold),
              TextSpan(
                  text: 'store', style: MTextStyle.textStyleFZ18CDarkBlueBold)
            ])),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              SizedBox(width: 4),
            ],
            flexibleSpace: Stack(
              children: [
                Positioned(
                    bottom: 0,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Jhon', style: MTextStyle.textStyleFZ15W300),
                        Text('What are you looking for today?',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: MTextStyle.textStyleFZ28W500),
                      ],
                    )),
              ],
            ),
          ),
        ),
      );
    });
  }
}
