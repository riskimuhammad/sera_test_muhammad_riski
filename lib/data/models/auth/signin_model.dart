import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_model.freezed.dart';
part 'signin_model.g.dart';

@freezed
class SigninModel with _$SigninModel {
  const factory SigninModel({
    String? username,
    String? password,
    //FOR API https://api.escuelajs.co/
    String? email,
    String? token,
  }) = _SigninModel;

  factory SigninModel.fromJson(Map<String, dynamic> json) =>
      _$SigninModelFromJson(json);
}
