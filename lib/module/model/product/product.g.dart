// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      photo: json['photo'] as String?,
      productName: json['product_name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      category: json['category'] as String?,
      description: json['description'] as String?,
      ownerId: json['owner_id'] as int?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'product_name': instance.productName,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'owner_id': instance.ownerId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
