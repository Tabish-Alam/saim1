import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyapp/views/detail_view.dart';
import 'package:propertyapp/views/login_view.dart';
import 'package:propertyapp/views/intro_view.dart';
import 'package:propertyapp/views/signup_view.dart';

void main() {
  runApp(property_app());
}

class property_app extends StatelessWidget {
  const property_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: details_view(),
    );
  }
}
