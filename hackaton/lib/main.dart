import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/utils/productlist.dart';
import 'package:hackaton/views/checkout.dart';
import 'package:hackaton/views/drawer.dart';
import 'package:hackaton/views/home.dart';
import 'package:hackaton/views/intro.dart';
import 'package:hackaton/views/login.dart';
import 'package:hackaton/views/navbar.dart';
import 'package:hackaton/views/order_done.dart';
import 'package:hackaton/views/product_description.dart';
import 'package:hackaton/views/signup.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: intro_view(),
    );
  }
}
