import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';

class rewards_view extends StatefulWidget {
  const rewards_view({super.key});

  @override
  State<rewards_view> createState() => _rewards_viewState();
}

class _rewards_viewState extends State<rewards_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                height: 170,
                width: 336,
                decoration: BoxDecoration(
                    color: selectcolor().vector_box_color,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: text_heading(page_heading: "Cashbacks Earned"),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        cash_text(
                            amount: "S507",
                            txt_color: selectcolor().themeColor),
                        plain_grey_text(write_text: "+ 88 Rs This month"),
                        SizedBox(
                          height: 10,
                        ),
                        btn_balance_reward(
                            btn_name: "View your cashback history"),
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: text_heading(page_heading: "Scrachcards won"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        scrachcards_reward(),
                        Positioned(
                            top: 30,
                            right: 20,
                            child: Image.asset("assets/images/Loading.png")),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    scrachcards_reward(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    scrachcards_reward(),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: text_heading(
                    page_heading: "Collect Rewards",
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              reward_page_widget(
                  vector_bg_image: "assets/images/Group.png",
                  vector_image: "assets/images/image 16.png",
                  title_text: "Flat 50% off on food Delivery",
                  subtitle_text: "On orders above 99 on swaggy, Zomato",
                  bg_color: selectcolor().reward_widget1_color),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              reward_page_widget(
                  vector_bg_image: "assets/images/Group-1.png",
                  vector_image: "assets/images/image 19.png",
                  title_text: "20% Cashback On Amason",
                  subtitle_text: "Up to Rs 150 Minimum Order 1000",
                  bg_color: selectcolor().reward_widget2_color),
            ],
          ),
        ],
      ),
    );
  }
}
