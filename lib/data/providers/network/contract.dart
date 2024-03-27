import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_model.dart';

abstract class Network {
  Future<ApiResult> callApi({required NetworkModel method});
}
