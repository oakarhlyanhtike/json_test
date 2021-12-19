import 'package:json_annotation/json_annotation.dart';

part 'myshape.g.dart';

@JsonSerializable(nullable: false)
class MyShape {
  final String shape;
  final Property property;
  MyShape({required this.shape, required this.property});

  factory MyShape.fromJson(Map<String, dynamic> json) =>
      _$MyShapeFromJson(json);

  Map<String, dynamic> toJson() => _$MyShapeToJson(this);
}
@JsonSerializable(nullable: false)
class Property {
  final double width;
  final double height;
  Property({required this.width, required this.height});

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}
