import 'package:test_muhammad_riski/core/constants/string_constants.dart';
import 'package:test_muhammad_riski/data/providers/network/contract.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_exception.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_model.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_parameters.dart';
import 'package:test_muhammad_riski/domain/repository/repository.dart';

class RepositoryImplementation extends Repository {
  final Network network;
  RepositoryImplementation(this.network);
  @override
  Future<ApiResult> signin() async {
    ApiResult apiResult;
    try {
      apiResult = await network.callApi(
          method: NetworkModel.post(
        networkParameter: NetworkParameter(
          url: baseUrl + authPath + authEndPoint,
        ),
      ));
    } catch (e) {
      apiResult = const ApiResult.failure(
          networkException: NetworkException.unknownExeption());
    }
    return apiResult;
  }
}