import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part "product_entity.freezed.dart";
part "product_entity.g.dart";

List<ProductEntity> productEntityFromJson(String str) =>
    List<ProductEntity>.from(
        json.decode(str).map((x) => ProductEntity.fromJson(x)));
ProductEntity productEntitySingleFromJson(String str) =>
    ProductEntity.fromJson(json.decode(str));

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    int? id,
    String? title,
    // int? price,
    double? price,
    String? description,
    // List<String>? images,
    String? image,
    String? creationAt,
    String? updatedAt,
    Map<String, dynamic>? rating,
    // Map<String, dynamic>? category,
    String? category,
    int? quantity,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
