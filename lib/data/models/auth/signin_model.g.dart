// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninModelImpl _$$SigninModelImplFromJson(Map<String, dynamic> json) =>
    _$SigninModelImpl(
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$SigninModelImplToJson(_$SigninModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'token': instance.token,
    };
