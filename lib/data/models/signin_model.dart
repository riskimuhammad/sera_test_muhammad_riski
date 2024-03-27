import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_model.freezed.dart';
part 'signin_model.g.dart';

@freezed
class SigninModel with _$SigninModel {
  const factory SigninModel({
    required String username,
    required String password,
  }) = _SigninModel;

  factory SigninModel.fromJson(Map<String, dynamic> json) =>
      _$SigninModelFromJson(json);
}
