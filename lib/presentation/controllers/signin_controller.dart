import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

import '../../data/models/signin_model.dart';

class SigninController extends GetxController {
  final Repository repository;
  SigninController(this.repository);
  RxBool obscureText = false.obs;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  showPassword() {
    obscureText.value = !obscureText.value;
  }

  signIn() async {
    SigninModel model = SigninModel(
        password: passwordController.text, email: emailController.text);
    ApiResult result = await repository.signin(model);
    result.when(
      success: (data, url, headers, statusCode) {
        log('S data ini adalah ${data}');
      },
      error: (data, url, headers, statusCode) {
        log('E data ini adalah ${data} ${statusCode} ${url}');
      },
      failure: (networkException) {
        log('F data ini adalah');
      },
    );
  }
}
