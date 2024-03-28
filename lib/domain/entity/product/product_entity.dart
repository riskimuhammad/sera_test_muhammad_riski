import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part "product_entity.freezed.dart";
part "product_entity.g.dart";

List<ProductEntity> signinEntityFromJson(String str) =>
    List<ProductEntity>.from(
        json.decode(str).map((x) => ProductEntity.fromJson(x)));

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    int? id,
    String? name,
    String? image,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
