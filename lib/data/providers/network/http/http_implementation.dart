import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/src/response.dart';
import 'package:test_muhammad_riski/data/providers/network/http/http_contract.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_exception.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_model.dart';
import 'package:http/http.dart' as http;

class HttpNetworkImplementation implements HttpNetwork {
  @override
  ApiResult unknownException = const ApiResult.failure(
      networkException: NetworkException.httpException());

  @override
  Future<Response> getResponse({required NetworkModel method}) async {
    try {
      return await method.when(
        post: (networkParameter) async {
          http.Response response = await http.post(
              Uri.parse(networkParameter.url),
              body: jsonEncode(networkParameter.requestBody),
              headers: {...?networkParameter.header});
          return response;
        },
        get: (networkParameter) async {
          http.Response response = await http.get(
              Uri.parse(networkParameter.url),
              headers: {...?networkParameter.header});
          return response;
        },
      );
    } catch (exception, stacktrace) {
      if (kDebugMode) print(stacktrace);
      rethrow;
    }
  }

  @override
  bool validStatusCode(int statusCode) {
    return statusCode >= 200 && statusCode < 300;
  }
}
