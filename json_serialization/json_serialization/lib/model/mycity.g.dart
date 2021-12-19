// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mycity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyCity _$MyCityFromJson(Map<String, dynamic> json) {
  return MyCity(
    city: json['city'] as String,
    street: (json['street'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$MyCityToJson(MyCity instance) => <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
    };
