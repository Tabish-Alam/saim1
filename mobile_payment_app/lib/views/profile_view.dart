import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';

class profile_view extends StatefulWidget {
  const profile_view({super.key});

  @override
  State<profile_view> createState() => _profile_viewState();
}

class _profile_viewState extends State<profile_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: ListView(children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.32,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectcolor().vector_box_color),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/images/profile_pic.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Alis",
                              style: TextStyle(
                                  color: selectcolor().whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Image.asset(
                              "assets/images/gold_medal.png",
                              height: 30,
                              width: 30,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        plain_grey_text(
                            write_text: "Level 4 Ace Member", text_size: 18),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "85%",
                              style: TextStyle(
                                  color: selectcolor().whiteColor,
                                  fontSize: 10),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset("assets/images/profile_bar.png"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Lv 5",
                                  style: TextStyle(
                                      color: selectcolor().whiteColor,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: selectcolor().whiteColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      profile_detail_widget(
                          field_name: "Transactions", number: "1,208"),
                      profile_page_verticaldivider_page(),
                      profile_detail_widget(
                          field_name: "Points", number: "726"),
                      profile_page_verticaldivider_page(),
                      profile_detail_widget(field_name: "Rank", number: "8"),
                      profile_page_verticaldivider_page(),
                      profile_btn_widget_class().profile_btn_widget(
                        btn_name: "Explore",
                        btn_icon: Icons.arrow_circle_right_outlined,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    profile_btn_widget_class().profile_btn_widget(
                        btn_name: "Edit", btn_icon: Icons.person_outline),
                    profile_page_verticaldivider_page(),
                    profile_btn_widget_class().profile_btn_widget(
                        btn_name: "Setting", btn_icon: Icons.settings),
                    profile_page_verticaldivider_page(),
                    profile_btn_widget_class().profile_btn_widget(
                        btn_name: "Share", btn_icon: Icons.share),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Center(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectcolor().vector_box_color),
              child: ListView(
                children: [
                  profile_setting1_widget(
                      title_icon: Icons.receipt_long_outlined,
                      title_text: "All Transactions"),
                  profile_setting1_widget(
                      title_icon: Icons.pending_outlined,
                      title_text: "Pending Transactions"),
                  profile_setting1_widget(
                      title_icon: Icons.watch_later_outlined,
                      title_text: "Refund status"),
                  profile_setting1_widget(
                      title_icon: Icons.report_gmailerrorred_sharp,
                      title_text: "Raise an issue"),
                  profile_setting1_widget(
                      title_icon: Icons.support_agent_outlined,
                      title_text: "Help and Support"),
                ],
              )),
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectcolor().vector_box_color),
              child: ListView(
                children: [
                  profile_setting1_widget(
                      title_icon: Icons.account_box_outlined,
                      title_text: "About Us"),
                  profile_setting1_widget(
                      title_icon: Icons.policy_outlined,
                      title_text: "Terms and Conditions"),
                  profile_setting1_widget(
                      title_icon: Icons.feedback_outlined,
                      title_text: "Feedback"),
                ],
              )),
        ),
      ]),
    );
  }
}
