import 'dart:math';
import 'package:flutter/material.dart';

randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
