import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/aqib.dart';
import 'package:myapp/colors_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs());
  }
}
