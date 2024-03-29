import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/models/session/session_model.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/domain/entity/auth/signin_entity.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

import '../../data/models/auth/signin_model.dart';

class SigninController extends GetxController {
  final Repository repository;
  final LocalRepository localRepository;
  SigninController(this.repository, this.localRepository);
  RxBool obscureText = false.obs;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  Rx<SigninEntity> signinEntity = SigninEntity.fromJson({}).obs;

  showPassword() {
    obscureText.value = !obscureText.value;
  }

  signIn() async {
    SigninModel model = SigninModel(
        password: passwordController.text, username: usernameController.text);
    ApiResult result = await repository.signin(model);
    result.when(
      success: (data, url, headers, statusCode) async {
        signinEntity.value = signinEntityFromJson(data);
        await localRepository
            .token(SessionModel.fromJson(signinEntity.toJson()));
        Get.offAndToNamed(AppRoutes.product);
      },
      error: (data, url, headers, statusCode) {},
      failure: (networkException) {},
    );
  }
}
