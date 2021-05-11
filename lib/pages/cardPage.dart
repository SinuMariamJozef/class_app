import 'dart:math';

import 'package:class_app/models/countryModel.dart';
import 'package:class_app/models/stockModel.dart';
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
      backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      body: Center(
        child: Card(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${widget.model.name}'),
                Text('Rs ${widget.model.capital}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}