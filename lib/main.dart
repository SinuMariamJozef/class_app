import 'package:class_app/pages/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// state -> currently available data
// context -> environment info
//
//https://restcountries.eu/rest/v2/all

// function to add 1
String addOne(int i) {
  return '${i + 1}';
}



//https://meet.google.com/toz-pjtr-bia