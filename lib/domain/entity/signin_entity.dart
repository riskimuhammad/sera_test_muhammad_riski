import 'package:freezed_annotation/freezed_annotation.dart';

part "signin_entity.freezed.dart";
part "signin_entity.g.dart";

@freezed
class SigninEntity with _$SigninEntity {
  const factory SigninEntity({
    required String token,
  }) = _SigninEntity;

  factory SigninEntity.fromJson(Map<String, dynamic> json) =>
      _$SigninEntityFromJson(json);
}
