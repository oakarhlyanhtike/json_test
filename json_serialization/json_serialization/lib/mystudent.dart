import 'package:json_annotation/json_annotation.dart';
part 'mystudent.g.dart';

@JsonSerializable()
class MyStudent {
  final int id;
  final String name;
  final String address;
  MyStudent({required this.id, required this.name, required this.address});

  factory MyStudent.fromJson(Map<String, dynamic> json) =>
      _$MyStudentFromJson(json);

  Map<String, dynamic> toJson() => _$MyStudentToJson(this);
}
