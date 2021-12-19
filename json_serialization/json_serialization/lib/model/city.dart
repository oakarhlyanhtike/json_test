import 'dart:convert';

class City {
  final String city;
  final List<String> streets;
  City({required this.city, required this.streets});

  factory City.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson = parsedJson["street"];
    List<String> streetsList = List<String>.from(streetsFromJson);
    return City(city: parsedJson["city"], streets: streetsList);
  }

  String toJson() => json.encode(_cityToJson(this));

  Map<String, dynamic> _cityToJson(City city) {
    return <String, dynamic>{
      "city": city.city,
      "street": city.streets.map((e) => e.toString())
    };
  }
}
