import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/image_path.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';
import 'package:test_muhammad_riski/presentation/controllers/splash_controller.dart';

class SplahScreen extends StatelessWidget {
  SplahScreen({super.key});
  final _controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init:
          SplashController(Get.find<LocalRepository>(), Get.find<Repository>()),
      initState: (state) {
        _controller.moveToSigninPage();
      },
      builder: (controller) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(ImagePath.logo)],
        ),
      ),
    );
  }
}
