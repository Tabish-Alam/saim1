import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';
import 'package:mobile_payment_app/views/recieve_view.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: text_heading(page_heading: "Money Transfer"),
                    ),
                    home_more_btn_widget(),
                  ],
                ),
                spacer(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    home_money_btn_widget(
                        btn_text: "Send QR Code",
                        btn_icon: Icons.qr_code_scanner_outlined,
                        btn_color: selectcolor().home_money_btn1_color),
                    spacer(width: 10),
                    home_money_btn_widget(
                        btn_text: "Send to Contact",
                        btn_icon: Icons.person_add_outlined,
                        btn_color: selectcolor().home_money_btn2_color)
                  ],
                ),
                spacer(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    home_money_btn_widget(
                        btn_text: "Send To Bank",
                        btn_icon: Icons.storefront_sharp,
                        btn_color: selectcolor().home_money_btn3_color),
                    spacer(width: 10),
                    home_money_btn_widget(
                        btn_text: "Self Transfer",
                        btn_icon: Icons.recycling_outlined,
                        btn_color: selectcolor().home_money_btn4_color),
                  ],
                )
              ],
            ),
          ),
        ]),
        Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: text_heading(
                          page_heading: "Recharge & Bill Payments"),
                    ),
                    home_more_btn_widget(),
                  ],
                ),
                spacer(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    home_money_btn_widget(
                        btn_text: "Mobile Recharge",
                        btn_icon: Icons.mobile_screen_share_outlined,
                        btn_color: selectcolor().home_money_btn5_color),
                    spacer(width: 10),
                    home_money_btn_widget(
                        btn_text: "Electricity Bill",
                        btn_icon: Icons.wb_sunny_outlined,
                        btn_color: selectcolor().home_money_btn6_color)
                  ],
                ),
                spacer(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    home_money_btn_widget(
                        btn_text: "DTH Recharge",
                        btn_icon: Icons.play_circle_outline,
                        btn_color: selectcolor().home_money_btn7_color),
                    spacer(width: 10),
                    home_money_btn_widget(
                        btn_text: "Postpaid bill",
                        btn_icon: Icons.receipt_long_outlined,
                        btn_color: selectcolor().home_money_btn8_color),
                  ],
                )
              ],
            ),
          ),
        ]),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: text_heading(page_heading: "Ticket Booking"),
              ),
            ),
            spacer(height: 15),
            Row(
              children: [
                spacer(width: 30),
                home_ticket_btn_widget(
                    btn_icon: Icons.movie_rounded, btn_name: "Movies"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.train_outlined, btn_name: "Trains"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.emoji_transportation, btn_name: "Bus"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.flight_rounded, btn_name: "Flights"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.car_rental_rounded, btn_name: "Car"),
              ],
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: text_heading(page_heading: "More Services"),
              ),
            ),
            spacer(height: 15),
            Row(
              children: [
                spacer(width: 30),
                home_ticket_btn_widget(
                    btn_icon: Icons.movie_rounded, btn_name: "Movies"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.train_outlined, btn_name: "Trains"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.emoji_transportation, btn_name: "Bus"),
                spacer(width: 10),
                home_ticket_btn_widget(
                    btn_icon: Icons.emoji_transportation, btn_name: "Bus"),
              ],
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: text_heading(page_heading: "Recent Transactions"),
              ),
            ),
            spacer(height: 15),
            Row(
              children: [
                spacer(width: 30),
                home_recent_transactions_widget(
                    img: "assets/images/recent_transaction_1.png"),
                spacer(width: 10),
                home_recent_transactions_widget(
                    img: "assets/images/recent_transaction_2.png"),
                spacer(width: 10),
                home_recent_transactions_widget(
                    img: "assets/images/recent_transaction_3.png"),
                spacer(width: 10),
                home_recent_transactions_widget(
                    img: "assets/images/recent_transaction_4.png"),
                spacer(width: 10),
                home_recent_transactions_widget(
                    img: "assets/images/recent_transaction_5.png"),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              height: 100,
              width: 350,
              child: Container(
                height: 50,
                width: 130,
                child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => recieve_view(),
                          ));
                    },
                    child: Text(
                      "Recieve Money",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
