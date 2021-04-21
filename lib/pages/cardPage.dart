import 'package:class_app/models/stockModel.dart';
import 'package:flutter/material.dart';

class CuttiCardPage extends StatefulWidget {
  CuttiCardPage(this.model);
  final StockModel model;
  @override
  _CuttiCardPageState createState() => _CuttiCardPageState();
}

class _CuttiCardPageState extends State<CuttiCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
    );
  }
}