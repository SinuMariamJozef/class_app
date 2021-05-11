import 'package:class_app/models/countryModel.dart';
import 'package:class_app/models/stockModel.dart';
import 'package:class_app/network/countriesNetwork.dart';
import 'package:class_app/widgets/cardWidget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Country> countries = [];
  bool networkFailure = false;

  @override
  void initState() {
    super.initState();

    getCountries();
  }

  getCountries() async {
    CountriesNetwork cnwert = CountriesNetwork();
    countries = await cnwert.fetchCountiries();
    if (countries == null) {
      countries = [];
      networkFailure = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        //title: Text('kk: ${MediaQuery.of(context).size.height},'),
        title: Row(
          children: [
            Text('countries',style: TextStyle(color: Colors.lightBlue)),
            Icon(Icons.flag,color: Colors.lightBlue,),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: countries.length == 0
          ? Center(
              child: networkFailure
                ? Text('Could not access newtuydsgfhjkdgs')
                : CircularProgressIndicator(),
            )
          : Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.network('https://i.stack.imgur.com/CIrsP.png'),
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      padding: EdgeInsets.all(4),
                      itemCount: countries.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => CuttiCard(countries[index]),
                    ),
                ],
              ),
            ),
          ),
    );
  }
}

List<StockModel> stocks = [
  StockModel('Turnover', 15000000, Colors.red, Colors.orange),
  StockModel('sdfdsf', 1500640000, Colors.orange, Colors.pink),
  StockModel('Turnover', 15000000, Colors.blue, Colors.orange),
  StockModel('dsfsf', 556465, Colors.green, Colors.purple),
  StockModel('f', 1500660000, Colors.orange, Colors.orange),
  StockModel('Turnover', 15000000, Colors.lightGreenAccent, Colors.orange),
  StockModel('fsdf', 1500032000, Colors.orange, Colors.orange),
  StockModel('Turnover', 15000000, Colors.pink, Colors.orange),
  StockModel('dsf', 1500230000, Colors.black, Colors.black),
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
//
// bdnsgfhjdhg

//https://meet.google.com/ymj-zxbb-qju
