import 'dart:convert';

class Student {
  final int id;
  final String name;
  final String address;
  Student({required this.id, required this.name, required this.address});

  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        id: parsedJson["id"],
        name: parsedJson["name"],
        address: parsedJson["address"]);
  }

  String toJson() => jsonEncode(_toJson(this));

  Map<String, dynamic> _toJson(Student student) {
    return <String, dynamic>{
      "id": student.id,
      "name": student.name,
      "address": student.address
    };
  }
}
