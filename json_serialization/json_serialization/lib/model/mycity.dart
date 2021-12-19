import 'package:json_annotation/json_annotation.dart';

part 'mycity.g.dart';

@JsonSerializable()
class MyCity {
  final String city;
  final List<String> street;
  MyCity({required this.city, required this.street});

  factory MyCity.fromJson(Map<String, dynamic> json) => _$MyCityFromJson(json);

  Map<String, dynamic> toJson() => _$MyCityToJson(this);
}
