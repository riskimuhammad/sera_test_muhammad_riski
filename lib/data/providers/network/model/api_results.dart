import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_muhammad_riski/data/providers/network/model/network_exception.dart';

part 'api_results.freezed.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult.success({
    required String data,
    required String url,
    required Map<String, String> headers,
    required int statusCode,
  }) = _NetworkModelPost;

  const factory ApiResult.error({
    required String data,
    required String url,
    required Map<String, String> headers,
    required int statusCode,
  }) = _NetworkModelError;

  const factory ApiResult.failure({
    required NetworkException networkException,
  }) = _NetworkModelFailure;
}
