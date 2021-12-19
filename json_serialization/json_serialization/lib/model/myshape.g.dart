// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myshape.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyShape _$MyShapeFromJson(Map<String, dynamic> json) {
  return MyShape(
    shape: json['shape'] as String,
    property: Property.fromJson(json['property'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MyShapeToJson(MyShape instance) => <String, dynamic>{
      'shape': instance.shape,
      'property': instance.property,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return Property(
    width: (json['width'] as num).toDouble(),
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };
