import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_serialization/model/product.dart';
import 'package:json_serialization/model/product_two.dart';
import 'package:json_serialization/model/weather.dart';

import 'dart:convert';

// import 'package:json_serialization/model/mycity.dart';

//import 'model/city.dart';
//import 'model/mycity.dart';

//import 'model/product.dart';
//import 'model/shap.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

Future<String> _loadJsonFromAsset(String filename) async {
  return await rootBundle.loadString('assest/data/$filename');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json Serialization'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // var jsonStudent = await _loadJsonFromAssett('data_one.json');
          // // Student student = Student.fromJson(json.decode(jsonStudent));
          // MyStudent student = MyStudent.fromJson(json.decode(jsonStudent));

          // print(student);
          // print(student.toJson());

          // var jsonCity = await _loadJsonFromAsset('data_two.json');

          // City city = City.fromJson(json.decode(jsonCity));
          //MyCity mycity = MyCity.fromJson(json.decode(jsonCity));

          //print(city);
          // print(mycity.toJson());

          // var jsonShape = await _loadJsonFromAsset('data_three.json');
          // //Shape shape = Shape.fromJson(json.decode(jsonShape));
          // MyShape myshape = MyShape.fromJson(json.decode(jsonShape));

          //print(myshape.toJson());

          // var jsonProduct = await _loadJsonFromAsset('data_four.json');
          // Product product = Product.fromJson(json.decode(jsonProduct));
          // print(product.toJson());

          // var jsonProduct = await _loadJsonFromAsset('data_four.json');
          // MyProduct product = MyProduct.fromJson(json.decode(jsonProduct));
          // print(product.toJson());

          var jsonWeather = await _loadJsonFromAsset('weather.json');
          Weather weather = Weather.fromJson(json.decode(jsonWeather));
          print(weather.coord.toJson());
        },
        child: Icon(Icons.add),
        
      ),
    );
  }
}
