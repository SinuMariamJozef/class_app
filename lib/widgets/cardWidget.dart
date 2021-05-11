import 'package:class_app/models/countryModel.dart';
import 'package:class_app/models/stockModel.dart';
import 'package:class_app/network/countriesNetwork.dart';
import 'package:class_app/pages/cardPage.dart';
import 'package:flutter/material.dart';

class CuttiCard extends StatelessWidget {
  CuttiCard(this.kutti);
  final StockModel kutti;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size.width;
    var mqh = MediaQuery.of(context).size.height;
    return Container(
      height: mqh * 0.1,
      width: mq * 0.4,
      color: kutti.borderColor,
      child: InkWell(
          //onTap: () => Navigator.of(context).push(
          //  MaterialPageRoute(
          //    builder: (context) => CuttiCardPage(kutti),
          //  )
          //),
          onTap: onTapFundjshfjkds,
      ),
    );
  }
}

void onTapFundjshfjkds() async {
  CountriesNetwork cnwert = CountriesNetwork();

  List<Country> ll = await cnwert.fetchCountiries();
  print('${ll[0].capital}');
  print('🐟🐟🐟🐟🐟🐟🐟🐟🐟');
}
