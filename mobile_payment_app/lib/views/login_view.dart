import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';
import 'package:mobile_payment_app/views/home_view.dart';
import 'package:mobile_payment_app/views/notifications_view.dart';
import 'package:mobile_payment_app/views/tab_view.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.73,
                width: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Group 815.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 80,
                left: 50,
                child: Text(
                  "LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER",
                  style: TextStyle(
                      color: selectcolor().whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Positioned(
                left: 25,
                top: 250,
                child: Image.asset(
                  "assets/images/Group 832.png",
                  // height: 250,
                  // width: 250,
                ),
              ),
              Positioned(
                  top: 170,
                  left: 45,
                  child: Image.asset("assets/images/image 25.png")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          login_text_widget(),
          SizedBox(
            height: 15,
          ),
          login_btn_widget_class(
            on_pressed_action: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tab_view(),
                  ));
            },
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Your personal details are safe with us ",
            style: TextStyle(
                color: selectcolor().login_btn_color,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Read our Privacy Policy and Terms and Conditions",
            style:
                TextStyle(color: selectcolor().login_btn_color, fontSize: 12),
          )
        ],
      ),
    );
  }
}
