import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/views/balance_view.dart';
import 'package:mobile_payment_app/views/home_view.dart';
import 'package:mobile_payment_app/views/notifications_view.dart';
import 'package:mobile_payment_app/views/profile_view.dart';
import 'package:mobile_payment_app/views/splash_screen.dart';
import 'package:mobile_payment_app/views/tab_view.dart';
import 'package:mobile_payment_app/views/login_view.dart';

void main() {
  runApp(paymentapp());
}

class paymentapp extends StatefulWidget {
  const paymentapp({super.key});

  @override
  State<paymentapp> createState() => _paymentappState();
}

class _paymentappState extends State<paymentapp> {
  @override
  // Void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3)).then((value) {
  //     Navigator.of(context).pushReplacement(CupertinoPageRoute(
  //       builder: (context) => tab_view(),
  //     ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
      // routes: {
      //   "h": (_) => home_view(),
      //   "/": (_) => notifications_view(),
      // },
    );
  }
}
