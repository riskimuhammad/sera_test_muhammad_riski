import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_result.freezed.dart';

@freezed
class LocalResult with _$LocalResult {
  const factory LocalResult.success({
    required String data,
  }) = _LocalModelSuccess;
  const factory LocalResult.failure({
    required String data,
  }) = _LocalModelFailure;
}
