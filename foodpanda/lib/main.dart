import 'package:flutter/material.dart';
import 'package:foodpanda/foodpandaui.dart';
import 'properties.dart';

void main() {
  runApp(foodpanda());
}

class foodpanda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: foodpandaui(),
    );
  }
}
