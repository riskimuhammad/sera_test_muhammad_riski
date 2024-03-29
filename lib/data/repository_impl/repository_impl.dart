import 'package:test_muhammad_riski/core/constants/string_constants.dart';
import 'package:test_muhammad_riski/data/models/product/product_model.dart';
import 'package:test_muhammad_riski/data/providers/network/contract.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_exception.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_model.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_parameters.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

import '../models/auth/signin_model.dart';

class RepositoryImplementation extends Repository {
  final Network network;
  RepositoryImplementation(this.network);
  @override
  Future<ApiResult> signin(SigninModel model) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.post(
        networkParameter: NetworkParameter(
            url: baseUrl + authPath + authEndPoint,
            header: {
              "Content-type": "application/json",
              "Accept": "application/json"
            },
            requestBody: model.toJson()),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  Future<ApiResult> sessionAuth(SigninModel model) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl + authPath + profileEndPoint,
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
            "Authorization": 'Bearer ${model.token}',
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getAllCategory() async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl + productEndPoint + categoryEndPoint,
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getProduct(ProductModel model) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl + productEndPoint + "?limit=${model.limit}",
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getUserByID(SigninModel model) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl + user + "${model.id}",
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getProductByCategories(String categories) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl +
              productEndPoint +
              categoryByNameEndPoint +
              '/$categories',
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }

  @override
  Future<ApiResult> getProductById(ProductModel model) async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.get(
        networkParameter: NetworkParameter(
          url: baseUrl + productEndPoint + "/${model.id}",
          header: {
            "Content-type": "application/json",
            "Accept": "application/json",
          },
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }
}
