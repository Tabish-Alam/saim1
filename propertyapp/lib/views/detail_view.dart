import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:propertyapp/customwidgets.dart';
import 'package:propertyapp/properties.dart';

class details_view extends StatefulWidget {
  const details_view({super.key});

  @override
  State<details_view> createState() => _details_viewState();
}

class _details_viewState extends State<details_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: app_text(
            add_text: "Detail", text_color: selectcolor().blacktextcolor),
        actions: [detail_page_btn(detail_btn_icon: Icons.arrow_back_ios_new)],
        backgroundColor: selectcolor().transparent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 1000,
            child: Image(
              image: AssetImage(
                "Assets/images/Rectangle 7.png",
              ),
              height: 800,
              width: 1000,
            ),
          ),
          Column(
            children: [
              app_text(add_text: "CRAFTSMAN HOUSE"),
              ListTile(
                  title: Text(
                    "520N Decudry Ave, Los Angeles",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      icon_text_widget(
                          add_text: "4 Bed", details_icon: Icons.bed),
                      SizedBox(
                        width: 20,
                      ),
                      icon_text_widget(
                          add_text: "4 Bath", details_icon: Icons.bathtub),
                      SizedBox(
                        width: 20,
                      ),
                      icon_text_widget(
                          add_text: "1 Garage", details_icon: Icons.garage),
                    ],
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: detail_page_btn(
                        detail_btn_icon: Icons.bookmark_outline),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
