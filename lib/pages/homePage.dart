import 'package:class_app/models/stockModel.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SliverGridDelegate gridDelegate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('width: ${MediaQuery.of(context).size.width},'),),
      backgroundColor: Colors.green,

      // body: GridView.builder(
      //   gridDelegate: gridDelegate,
      //   itemCount: stocks.length,
      //   shrinkWrap: true,
      //   itemBuilder: (context, index) => CuttiCard(stocks[index]),
      //   ),
    );
  }
}


List<StockModel> stocks = [
  StockModel('Turnover', 15000000, Colors.orange, Colors.orange),
  StockModel('sdfdsf', 1500640000, Colors.orange, Colors.orange),
  StockModel('Turnover', 15000000, Colors.orange, Colors.orange),
  StockModel('dsfsf', 556465, Colors.orange, Colors.orange),
  StockModel('f', 1500660000, Colors.orange, Colors.orange),
  StockModel('Turnover', 15000000, Colors.orange, Colors.orange),
  StockModel('fsdf', 1500032000, Colors.orange, Colors.orange),
  StockModel('Turnover', 15000000, Colors.orange, Colors.orange),
  StockModel('dsf', 1500230000, Colors.orange, Colors.orange),
];

// mq 400px
// mq * 0.5 => 200px
// mq * 1 || mq => 400px
// mq * 0.1 || 40px
// 75% => mq * 0.75
// 23.8769% => mq * 0.238769
// 

// LINUX -
// 
// select a linux distro
// download the .iso
// flash to usb
// reboot from usb
// enjoy enjami