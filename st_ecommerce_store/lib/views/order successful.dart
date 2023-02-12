import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class order_successful_view extends StatefulWidget {
  const order_successful_view({super.key});

  @override
  State<order_successful_view> createState() => _order_successful_viewState();
}

class _order_successful_viewState extends State<order_successful_view> {
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
                    bg_color: selectcolor().themecolor,
                    border_radius: 25,
                    icon: Icons.credit_card_outlined,
                    icon_color: selectcolor().black,
                    icon_size: 50,
                  )),
                  spacer(spacer_height: 30),
                  Text("Payment Successful!",
                      style: TextStyle(
                          fontSize: 30,
                          color: selectcolor().black,
                          fontWeight: FontWeight.w600)),
                  spacer(spacer_height: 3),
                  Text("Orders will arrive in 3 days!",
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
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        scrollDirection: Axis.horizontal,
                        itemCount: productlist.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              icon_btn_widget_class(
                                Width: 100,
                                height: 100,
                                bg_color: selectcolor().products_bg_color,
                                border_radius: 25,
                                img_widget: true,
                                img: productlist[index].product_img,
                                img_height: 100,
                                img_width: 100,
                              ),
                              spacer(spacer_width: 110, spacer_height: 5),
                              Text("${productlist[index].product_name}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          );
                        }),
                  ),
                  spacer(spacer_height: 40),
                  order_btn_suffix_widget_class(
                    height: 50,
                    width: 320,
                    bg_color: selectcolor().themecolor,
                    border_radius: 10,
                    text: "See Order Details",
                    text_color: selectcolor().white,
                    text_size: 15,
                    icon: Icons.arrow_forward_sharp,
                    icon_color: selectcolor().white,
                    suffix: true,
                    icon_size: 20,
                  ),
                  spacer(spacer_height: 30),
                ],
              ),
            ]));
  }
}
