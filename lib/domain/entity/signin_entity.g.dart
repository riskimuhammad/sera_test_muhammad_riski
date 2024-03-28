// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninEntityImpl _$$SigninEntityImplFromJson(Map<String, dynamic> json) =>
    _$SigninEntityImpl(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$SigninEntityImplToJson(_$SigninEntityImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
