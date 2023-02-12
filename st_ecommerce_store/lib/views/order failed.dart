import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/properties.dart';

class order_failed_view extends StatefulWidget {
  const order_failed_view({super.key});

  @override
  State<order_failed_view> createState() => _order_failed_viewState();
}

class _order_failed_viewState extends State<order_failed_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().white,
        appBar: AppBar(
          backgroundColor: selectcolor().white,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_sharp,
            color: selectcolor().black,
          ),
          centerTitle: true,
          title: Text(
            "Order Complete",
            style: TextStyle(color: selectcolor().black),
          ),
          actions: [Icon(Icons.more_horiz_rounded, color: selectcolor().black)],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: icon_btn_widget_class(
                    Width: 100,
                    height: 100,
                    bg_color: selectcolor().order_failed_box_color,
                    border_radius: 25,
                    icon: Icons.credit_card_off_outlined,
                    icon_color: selectcolor().black,
                    icon_size: 50,
                  )),
                  spacer(spacer_height: 30),
                  Text("Order Failed",
                      style: TextStyle(
                          fontSize: 30,
                          color: selectcolor().black,
                          fontWeight: FontWeight.w600)),
                  spacer(spacer_height: 3),
                  Text("Your payment occurred an error.",
                      style: TextStyle(
                        fontSize: 15,
                        color: selectcolor().grey_text_color,
                      )),
                  spacer(spacer_height: 35)
                ],
              ),
              Divider(
                color: selectcolor().grey_color,
                height: 5,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  spacer(spacer_height: 60),
                  Icon(
                    Icons.info_outline,
                    size: 30,
                  ),
                  spacer(spacer_height: 20),
                  Text("Do not worry 😉",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: selectcolor().black,
                          fontWeight: FontWeight.w600)),
                  spacer(spacer_height: 3),
                  Text(
                      textAlign: TextAlign.center,
                      "Keep calm, sometimes it happens\nPlease go back and check your payment method\nor contact us",
                      style: TextStyle(
                        fontSize: 15,
                        color: selectcolor().grey_text_color,
                      )),
                  spacer(spacer_height: 50),
                  order_btn_prefix_widget_class(
                    height: 50,
                    width: 320,
                    bg_color: selectcolor().themecolor,
                    border_radius: 10,
                    text: "Review Payment Method",
                    text_color: selectcolor().white,
                    text_size: 15,
                    icon: Icons.arrow_back_sharp,
                    icon_color: selectcolor().white,
                    prefix: true,
                    icon_size: 20,
                  ),
                  spacer(spacer_height: 15),
                  order_btn_suffix_widget_class(
                    height: 50,
                    width: 320,
                    bg_color: selectcolor().failed_btn_color,
                    border_radius: 10,
                    text: "Review Payment Method",
                    text_color: selectcolor().black,
                    text_size: 15,
                    icon: Icons.arrow_forward_sharp,
                    icon_color: selectcolor().white,
                    suffix: false,
                    icon_size: 20,
                  ),
                  spacer(spacer_height: 40)
                ],
              ),
            ]));
  }
}
