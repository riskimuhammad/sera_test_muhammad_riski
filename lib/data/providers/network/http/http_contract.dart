import 'package:http/http.dart' as http;
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_model.dart';

abstract class HttpNetwork {
  Future<http.Response> getResponse({required NetworkModel method});
  bool validStatusCode(int statusCode);
  late ApiResult unknownException;
}
