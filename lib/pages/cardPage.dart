import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:class_app/models/countryModel.dart';
import 'package:class_app/models/stockModel.dart';
import 'package:class_app/services/randomColor.dart';
import 'package:flutter/material.dart';

class CuttiCardPage extends StatefulWidget {
  CuttiCardPage(this.model);
  final Country model;
  @override
  _CuttiCardPageState createState() => _CuttiCardPageState();
}

class _CuttiCardPageState extends State<CuttiCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: randomColor(),
      body: Center(
        child: Card(
          color: randomColor(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${widget.model.name}'),
                Text('Rs ${widget.model.capital}'),
                SvgPicture.network('${widget.model.flag??""}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}