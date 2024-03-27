import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';

abstract class Repository {
  Future<ApiResult> signin();
}
