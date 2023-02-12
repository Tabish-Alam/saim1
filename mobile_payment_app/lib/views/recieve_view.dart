import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/main.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';

class recieve_view extends StatefulWidget {
  const recieve_view({super.key});

  @override
  State<recieve_view> createState() => _recieve_viewState();
}

class _recieve_viewState extends State<recieve_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: Column(children: [
        Container(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        height: 350,
                        width: 336,
                        decoration: BoxDecoration(
                            color: selectcolor().vector_box_color,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text_heading(page_heading: "Recieve Money"),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: selectcolor().whiteColor,
                                      )),
                                ],
                              ),
                            ),
                            Image.asset("images/barcode.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
          child: Container(
            alignment: Alignment.topLeft,
            child: text_heading(page_heading: "Other Options"),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 10,
            ),
            recieve_page_btn(
                hint_text: "   Your Pay ID",
                suffix_text: "abc@54321987654",
                suiffix_icon: Icons.copy_outlined),
            SizedBox(
              height: 10,
            ),
            recieve_page_btn(
                hint_text: "Show bank account details",
                suiffix_icon: Icons.arrow_forward_ios_outlined,
                suffix_text: "")
          ],
        ),
      ]),
    );
  }
}
