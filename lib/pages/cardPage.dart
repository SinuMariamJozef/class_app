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
      backgroundColor: widget.model.borderColor,
      body: Center(
        child: Card(
          color: widget.model.iconColor,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${widget.model.name}'),
                Text('Rs ${widget.model.amount}.00'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}