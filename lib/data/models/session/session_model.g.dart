// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionModelImpl _$$SessionModelImplFromJson(Map<String, dynamic> json) =>
    _$SessionModelImpl(
      access_token: json['access_token'] as String?,
      refresh_token: json['refresh_token'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$SessionModelImplToJson(_$SessionModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'name': instance.name,
      'role': instance.role,
      'avatar': instance.avatar,
    };
