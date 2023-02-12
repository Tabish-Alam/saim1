import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';
import 'package:mobile_payment_app/views/home_view.dart';
import 'package:mobile_payment_app/views/tab_view.dart';

class notifications_view extends StatefulWidget {
  const notifications_view({super.key});

  @override
  State<notifications_view> createState() => _notifications_viewState();
}

class _notifications_viewState extends State<notifications_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().theme_background_color,
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.53,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: selectcolor().vector_box_color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView(
                children: [
                  notifications_heading_widget_class(
                    page_heading: "Notifications",
                    page_icon: Icons.cancel_outlined,
                    on_pressed_action: () {
                      Navigator.pop(
                        context,
                      );
                    },
                  ),
                  notifications_listile_widget(
                      title_text: "Recharge Completed",
                      message:
                          "Your last recharge on 9847229989 of\n199 rs has been succesfully completed.",
                      date: "May 20  - 12:32 Pm"),
                  notifications_listile_widget(
                      title_text: "Money Recived",
                      message:
                          "Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.",
                      date: "May 20  - 12:45 Pm"),
                  notifications_listile_widget(
                      title_text: "Offer Unlocked",
                      message:
                          "You have an unlockd offer avilable go to offer section or tap to view the offer.",
                      date: "May 20  - 2:45 Pm"),
                  notifications_heading_widget_class(
                      page_heading: "Recent Notifications",
                      page_icon: Icons.arrow_drop_down_circle_outlined),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
