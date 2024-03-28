import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_session_parameters.freezed.dart';

@freezed
class LocalSessionParameter with _$LocalSessionParameter {
  const factory LocalSessionParameter({
    required String access_token,
    required String refresh_token,
  }) = _LocalSessionParameter;
}
