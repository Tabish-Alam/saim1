import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackaton/utils/colors.dart';

class order_done_view extends StatefulWidget {
  const order_done_view({super.key});

  @override
  State<order_done_view> createState() => _order_done_viewState();
}

class _order_done_viewState extends State<order_done_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Selectcolor().transparent,
        elevation: 0.0,
      ),
      backgroundColor: Selectcolor().white,
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/order_done_bg.png"),
                alignment: Alignment.topRight,
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Order\nReceived",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.06,
                  fontWeight: FontWeight.w700,
                  color: Selectcolor().text_green_order_color),
            ),
            Text(
              "Order ID : #293092309",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: Selectcolor().text_blue_order_color),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset("assets/order_done_screen_img.png"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      "KIRIM",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          color: Selectcolor().white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Selectcolor().text_green_order_color,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            )
          ],
        ),
      ),
    );
  }
}
