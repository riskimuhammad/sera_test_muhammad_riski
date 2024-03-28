import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_parameters.freezed.dart';

@freezed
class LocalParameter with _$LocalParameter {
  const factory LocalParameter({
    String? value,
    required String key,
  }) = _LocalParameter;
}
