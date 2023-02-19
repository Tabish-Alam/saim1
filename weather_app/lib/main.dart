import 'package:flutter/material.dart';
import 'package:weather_app/View/home_view.dart';
import 'package:weather_app/View/search_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_view(),
    );
  }
}
