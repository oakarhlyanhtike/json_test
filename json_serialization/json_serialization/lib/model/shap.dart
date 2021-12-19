import 'dart:convert';

class Shape {
  final String shape;
  final Property property;
  Shape({required this.shape, required this.property});

  factory Shape.fromJson(Map<String, dynamic> paredJson) {
    return Shape(shape: paredJson["shape"], property: paredJson["property"]);
  }

  String toJson() => json.encode(_shapeToJson(this));

  Map<String, dynamic> _shapeToJson(Shape shape) {
    return <String, dynamic>{
      "shape": shape.shape,
      "property": shape.property.toJson()
    };
  }
}

class Property {
  final double width;
  final double height;
  Property({required this.width, required this.height});

  factory Property.fromJson(Map<String, dynamic> parsedJson) {
    return Property(width: parsedJson["width"], height: parsedJson["height"]);
  }

  Map<String, dynamic> toJson() => _propertyToJson(this);

  Map<String, dynamic> _propertyToJson(Property property) {
    return <String, dynamic>{
      "width": property.width,
      "height": property.height
    };
  }
}
