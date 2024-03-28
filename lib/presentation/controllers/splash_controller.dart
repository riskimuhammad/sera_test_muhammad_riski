import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/data/models/session/session_model.dart';
import 'package:test_muhammad_riski/domain/repository/local_repository.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

import '../../data/models/auth/signin_model.dart';
import '../../data/providers/network/model/api_results.dart';

class SplashController extends GetxController {
  LocalRepository localRepository;
  Repository repository;
  SplashController(this.localRepository, this.repository);
  RxString token = ''.obs;

  moveToSigninPage() {
    Future.delayed(Duration(seconds: 2), () {
      getSession();
    });
  }

  getSession() async {
    final res = await localRepository.getToken();
    res.when(
      success: (data) {
        final dataDecode = jsonDecode(data) as String;
        sessionChecker(dataDecode);
      },
      failure: (data) {
        Get.offAndToNamed(AppRoutes.signin);
      },
    );
  }

  sessionChecker(token) async {
    ApiResult sessionResult =
        await repository.sessionAuth(SigninModel(token: token));
    sessionResult.when(
      success: (data, url, headers, statusCode) {
        localRepository.session(SessionModel.fromJson(json.decode(data)));
        Get.offAndToNamed(AppRoutes.product);
      },
      error: (data, url, headers, statusCode) {
        localRepository.deleteSession();
        localRepository.deleteToken();
        Get.offAndToNamed(AppRoutes.signin);
      },
      failure: (networkException) {},
    );
  }

  @override
  void onInit() {
    moveToSigninPage();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
