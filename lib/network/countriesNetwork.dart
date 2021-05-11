import 'dart:convert';

import 'package:class_app/models/countryModel.dart';
import 'package:http/http.dart' as http;

class CountriesNetwork {
  fetchCountiries() async {
    //https://restcountries.eu/rest/v2/all

    //print(await http.read('https://restcountries.eu/rest/v2/all'));

    try {
      var result = await http.get('https://restcountries.eu/rest/v2/all');
      print('kitti ${result.body.runtimeType}');

      var body = jsonDecode(result.body);
      print(body.runtimeType);
      // todo create a for loop to do the same
      List<Country> countries = List.generate(
          body.length,
          ((index) => Country(
              name: body[index]['name'], flag: body[index]['flag'], capital: body[index]['capital'])));
      return countries;
    } catch (e) {
    }
  }
}

//* whatsapp nokedaa
