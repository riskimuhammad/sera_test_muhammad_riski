// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninModelImpl _$$SigninModelImplFromJson(Map<String, dynamic> json) =>
    _$SigninModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$SigninModelImplToJson(_$SigninModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
