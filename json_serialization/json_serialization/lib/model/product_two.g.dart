// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyProduct _$MyProductFromJson(Map<String, dynamic> json) {
  return MyProduct(
    id: json['id'] as int,
    name: json['name'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => MyImage.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MyProductToJson(MyProduct instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

MyImage _$MyImageFromJson(Map<String, dynamic> json) {
  return MyImage(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$MyImageToJson(MyImage instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
