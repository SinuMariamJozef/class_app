import 'package:flutter/material.dart';

class StockModel {
  StockModel(
    this.name,
    this.amount,
    this.borderColor,
    this.iconColor,
  );

  //changeAmount(int newAmount){
  //  amount = newAmount;
  //}

  //isAmountGreaterThan200(){
  //  if(amount > 200) return true;
  //  else return false;
  //}

  //getName(){
  //  return name;
  //}

  //getName2() => name;

  String name;
  int amount;
  Color borderColor;
  Color iconColor;
}
