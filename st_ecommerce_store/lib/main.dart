import 'package:flutter/material.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/cart.dart';
import 'package:st_ecommerce_store/views/categories.dart';
import 'package:st_ecommerce_store/views/filter.dart';
import 'package:st_ecommerce_store/views/headphone.dart';
import 'package:st_ecommerce_store/views/home.dart';
import 'package:st_ecommerce_store/views/intro.dart';
import 'package:st_ecommerce_store/views/login.dart';
import 'package:st_ecommerce_store/views/navbar_view.dart';
import 'package:st_ecommerce_store/views/order%20failed.dart';
import 'package:st_ecommerce_store/views/order%20successful.dart';
import 'package:st_ecommerce_store/views/order_review.dart';
import 'package:st_ecommerce_store/views/shipping.dart';
import 'package:st_ecommerce_store/views/single_product.dart';
import 'package:st_ecommerce_store/views/speaker.dart';

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
      home: onboard_view(),
      // home: categories_view(),
    );
  }
}
