import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/headphone.dart';
import 'package:st_ecommerce_store/views/home.dart';
import 'package:st_ecommerce_store/views/speaker.dart';

import '../productlist.dart';

class cart_view extends StatefulWidget {
  const cart_view({super.key});

  @override
  State<cart_view> createState() => _cart_viewState();
}

class _cart_viewState extends State<cart_view> {
  on_pressed_click() {
    // for (var index = 0; index < category_name.length; index++) {
    //   if (category_name[index]['name'] == "Speaker") {
    //     (Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => speakerlist_view(),
    //         )));
    //   } else if (category_name[index]['name'] == 'Headphone') {
    //     (Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => headphonelist_view(),
    //         )));
    //   }

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => speakerlist_view(),
        ));
  }

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
          "MY CART",
          style: TextStyle(color: selectcolor().black),
        ),
        actions: [Icon(Icons.more_horiz_rounded, color: selectcolor().black)],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    color: selectcolor().products_bg_color,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                        width: 120,
                        height: 200,
                        child: Image.asset("assets/images/product_2.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Beosound 1",
                          style: TextStyle(
                              color: selectcolor().black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        spacer(spacer_height: 3),
                        Row(
                          children: [
                            Text(
                              "Color",
                              style: TextStyle(
                                color: selectcolor().grey_text_color,
                                fontSize: 12,
                                // fontWeight: FontWeight.w700
                              ),
                            ),
                            spacer(spacer_width: 5),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: selectcolor().black,
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            spacer(spacer_width: 10),
                            Text(
                              "Size",
                              style: TextStyle(
                                color: selectcolor().grey_text_color,
                                fontSize: 12,
                                // fontWeight: FontWeight.w700
                              ),
                            ),
                            spacer(spacer_width: 5),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: selectcolor().white,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                      color: selectcolor().grey_text_color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                        spacer(spacer_height: 10),
                        Text(
                          "S1,600",
                          style: TextStyle(
                            color: selectcolor().black,
                            fontSize: 20,
                            // fontWeight: FontWeight.w700
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "-",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: selectcolor().grey_text_color,
                                fontSize: 50,
                                // fontWeight: FontWeight.w700
                              ),
                            ),
                            spacer(spacer_width: 5),
                            Container(
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: selectcolor().white,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      color: selectcolor().black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            spacer(spacer_width: 10),
                            Text(
                              "+",
                              style: TextStyle(
                                  color: selectcolor().grey_text_color,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            spacer(spacer_height: 30),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  border: Border.all(color: selectcolor().grey_color),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    color: selectcolor().black,
                    size: 30,
                  ),
                  title: Text(
                    "Shipping",
                    style: TextStyle(
                        color: selectcolor().black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "DM Sans"),
                  ),
                  subtitle: Text(
                    "2-3 days",
                    style: TextStyle(
                      color: selectcolor().grey_text_color,
                      fontSize: 15,
                      // fontWeight: FontWeight.w800
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_downward_outlined,
                    color: selectcolor().black,
                    size: 30,
                  ),
                ),
              ),
            ),
            spacer(spacer_height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  border: Border.all(color: selectcolor().grey_color),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.percent_outlined,
                    color: selectcolor().black,
                    size: 30,
                  ),
                  title: Text(
                    "Promo Code",
                    style: TextStyle(
                      color: selectcolor().black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      // fontFamily: "DM Sans"
                    ),
                  ),
                  subtitle: Text(
                    "- S100.00",
                    style: TextStyle(
                      color: selectcolor().grey_text_color,
                      fontSize: 15,
                      // fontWeight: FontWeight.w800
                    ),
                  ),
                  trailing: Container(
                    width: MediaQuery.of(context).size.width * 0.28,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.19,
                          height: 25,
                          // alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: selectcolor().themecolor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () {},
                              child: Text(
                                "ST#132",
                                style: TextStyle(
                                    color: selectcolor().black,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "DM Sans"),
                              )),
                        ),
                        spacer(spacer_width: 10),
                        Icon(
                          Icons.check,
                          color: selectcolor().green_icon_color,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // spacer(spacer_height: 80)
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Divider(
                color: selectcolor().grey_color,
                height: 5,
                thickness: 1,
              ),
            ),
            spacer(spacer_height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      color: selectcolor().black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "DM Sans"),
                ),
                Text(
                  "S 9,800",
                  style: TextStyle(
                      color: selectcolor().black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "DM Sans"),
                )
              ],
            ),
            spacer(spacer_height: 30),

            // checkout button
            order_btn_suffix_widget_class(
              height: 50,
              width: 320,
              bg_color: selectcolor().themecolor,
              border_radius: 10,
              text: "CHECKOUT",
              text_color: selectcolor().white,
              text_size: 15,
              icon: Icons.arrow_forward_sharp,
              icon_color: selectcolor().white,
              suffix: true,
              icon_size: 20,
              on_press: () {
                Categories_function();
                on_pressed_click();
                // headphone_function();
              },
            ),
            // spacer(spacer_height: 10),
          ],
        ),
      ),
    );
  }
}
