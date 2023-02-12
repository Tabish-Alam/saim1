import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';

class offer_view extends StatefulWidget {
  const offer_view({super.key});

  @override
  State<offer_view> createState() => _offer_viewState();
}

class _offer_viewState extends State<offer_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            offer_page_widget(
                title_text: "Mobile recharge Offer\nUse Code FIRST20",
                subtitle_text:
                    "Get 20 % Instant cashback upto Rs 50 on\nyour first mobile recharge. T&C apply",
                bg_color: selectcolor().offer_widget1_4_color,
                vector_image: "images/offer_img1.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            offer_page_widget(
                title_text: "DTH Recharge Offer\nUse Code FIRSDTHT20",
                subtitle_text:
                    "Get 20 % Instant cashback upto Rs 50 on\nyour first DTH recharge. T&C apply",
                bg_color: selectcolor().offer_widget2_5_color,
                vector_image: "images/offer_img2.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            offer_page_widget(
                title_text: "Flipcart Shopping Offer",
                subtitle_text:
                    "Shop on Flipcart using our payment system\nto get upto 50% cashback . T&C appply",
                bg_color: selectcolor().offer_widget3_color,
                vector_image: "images/offer_img3.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            offer_page_widget(
                title_text: "Money Transfer Offer",
                subtitle_text:
                    "Get a scratch card with assuerd casbck and\ncoupons on Money Transfer of Rs 500 or\nmore . T&C apply",
                bg_color: selectcolor().offer_widget1_4_color,
                vector_image: "images/offer_img4.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            offer_page_widget(
                title_text: "Rs 50 Off on Flights",
                subtitle_text:
                    "Get instant discount of flat 50 Rs on Flight\nticket booking. T&C apply",
                bg_color: selectcolor().offer_widget2_5_color,
                vector_image: "images/offer_img5.png"),
          ],
        ),
      ),
    );
  }
}
