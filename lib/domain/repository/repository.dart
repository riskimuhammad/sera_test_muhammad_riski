import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';

import '../../data/models/auth/signin_model.dart';

abstract class Repository {
  Future<ApiResult> signin(SigninModel model);
}
