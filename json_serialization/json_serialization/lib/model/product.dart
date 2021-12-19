import 'dart:convert';

class Product {
  final int id;
  final String name;
  List<Image> image;
  Product({required this.id, required this.name, required this.image});

  factory Product.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson["image"] as List;
    List<Image> imageList = list.map((e) => Image.fromJson(e)).toList();
    return Product(
        id: parsedJson["id"], name: parsedJson["name"], image: imageList);
  }

  String toJson() => jsonEncode(_productToJson(this));

  Map<String, dynamic> _productToJson(Product product) {
    return <String, dynamic>{
      "id": product.id,
      "name": product.name,
      "image": product.image.map((e) => e.toJson())
    };
  }
}

class Image {
  final int id;
  final String name;
  Image({required this.id, required this.name});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(id: parsedJson["id"], name: parsedJson["name"]);
  }

  Map<String, dynamic> toJson() => _imageToJson(this);

  Map<String, dynamic> _imageToJson(Image image) {
    return <String, dynamic>{"id": image.id, "name": image.name};
  }
}
