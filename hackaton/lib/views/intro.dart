import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/views/login.dart';

class intro_view extends StatefulWidget {
  const intro_view({super.key});

  @override
  State<intro_view> createState() => _intro_viewState();
}

class _intro_viewState extends State<intro_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Selectcolor().white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/intro_bg.png")),
                color: Selectcolor().text_green_order_color,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/intro_logo.png"),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/intro_logo_text.png",
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              "GET READY\nBE HIGYENIC",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Selectcolor().text_green_order_color),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              "Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  // fontWeight: FontWeight.bold,
                  color: Selectcolor().text_green_order_color),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          // bottom btn
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => login_view(),
                      ));
                },
                child: Container(
                  child: Text(
                    "MASUK",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        color: Selectcolor().white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Selectcolor().text_green_order_color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          )
          // bottom btn
        ],
      ),
    );
  }
}
