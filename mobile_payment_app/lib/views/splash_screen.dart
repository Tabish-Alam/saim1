import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/login_view.dart';
import 'package:mobile_payment_app/views/tab_view.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
// Navigator.pushReplacement(
//   context, MaterialPageRoute(builder: (context) => login_view()));

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => login_view()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().theme_background_color,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 600,
              // width: 200,
              alignment: Alignment.center,
              child: Image.asset("assets/images/splash_logo.png"),
            ),
            Column(
                // alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/splash_logo2.png"),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/images/splash_loading.png"),
                ]),
          ],
        ));
  }
}
