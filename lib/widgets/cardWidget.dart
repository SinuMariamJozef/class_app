import 'package:class_app/models/stockModel.dart';
import 'package:flutter/material.dart';

class CuttiCard extends StatelessWidget {
  CuttiCard(this.model);
  final StockModel model;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size.width;
    var mqh = MediaQuery.of(context).size.height;
    return Container(
      height: mqh * 0.1,
      width: mq * 0.4,
      color: model.borderColor,
    );
  }
}