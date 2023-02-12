import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';

class balance_view extends StatefulWidget {
  const balance_view({super.key});

  @override
  State<balance_view> createState() => _balance_viewState();
}

class _balance_viewState extends State<balance_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Container(
          height: 400,
          // width: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectcolor().vector_box_color),
          child: Stack(alignment: Alignment.topCenter, children: [
            // Image.asset(
            //   "assets/images/Rectangle 95.png",
            //   // height: double.infinity,

            //   width: 350,
            // ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_left_outlined,
                          color: selectcolor().whiteColor,
                        )),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child:
                                text_heading(page_heading: "Portfolio Value"),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          cash_text(
                              amount: 'S54,375',
                              txt_color: selectcolor().themeColor),
                          SizedBox(
                            height: 5,
                          ),
                          plain_grey_text(write_text: "In 3 Accounts"),
                          Container(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    balance_bank_box(
                                        box_color: selectcolor()
                                            .balance_bank_box1_color,
                                        bank_name: "Federal Bank",
                                        account_no: "1142524899652",
                                        bank_amount: "16,456.05"),
                                    SizedBox(
                                      height: 120,
                                      width: 15,
                                    ),
                                    balance_bank_box(
                                        box_color: selectcolor()
                                            .balance_bank_box2_color,
                                        bank_name: "States Bank",
                                        account_no: "1142524899652",
                                        bank_amount: "2045.05"),
                                  ],
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    balance_bank_box(
                                        box_color: selectcolor()
                                            .balance_bank_box3_color,
                                        bank_name: "Best Bank",
                                        account_no: "1142521547852",
                                        bank_amount: "35873.5"),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: selectcolor().whiteColor,
                                          size: 20,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          btn_balance_reward(btn_name: "Add/Manage Accounts"),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: 75,
                    // ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bar_chart_outlined,
                          color: selectcolor().whiteColor,
                        )),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
