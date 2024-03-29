// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      products: json['products'] as List<dynamic>?,
      userId: json['userId'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'userId': instance.userId,
      'date': instance.date,
    };
