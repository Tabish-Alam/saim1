import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:propertyapp/customwidgets.dart';
import 'package:propertyapp/properties.dart';

class intro_view extends StatefulWidget {
  const intro_view({super.key});

  @override
  State<intro_view> createState() => _intro_viewState();
}

class _intro_viewState extends State<intro_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKo8dHl8dBZJslTnz8kE0q2STi1y7hHtpVw&usqp=CAU"),
              radius: 80,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Let's you in",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  image_text_button(
                      img_path: "Assets/images/fb_logo.png",
                      img_text_btn: "Continue with Facebook"),
                  SizedBox(
                    height: 10,
                  ),
                  image_text_button(
                      img_path: "Assets/images/google_logo.png",
                      img_text_btn: "Continue with Google"),
                  SizedBox(
                    height: 10,
                  ),
                  image_text_button(
                      img_path: "Assets/images/apple_logo.png",
                      img_text_btn: "Continue with Apple"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: selectcolor().hovercolor,
              indent: 30,
              height: 2,
              thickness: 2,
              endIndent: 30,
            ),
            SizedBox(
              height: 20,
            ),
            login_button(btn_name: "Signin with password"),
            SizedBox(
              height: 10,
            ),
            rich_text(),
          ]),
      // ),
    );
  }
}
