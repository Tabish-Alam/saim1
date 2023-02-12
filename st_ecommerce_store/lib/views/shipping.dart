import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class shipping_view extends StatefulWidget {
  const shipping_view({super.key});

  @override
  State<shipping_view> createState() => _shipping_viewState();
}

class _shipping_viewState extends State<shipping_view> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
              color: selectcolor().themecolor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/profile_img.png"),
              ),
              spacer(spacer_height: 10),
              Text(
                "Sajin",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: selectcolor().black,
                    fontFamily: "DM Sans"),
              ),
              spacer(spacer_height: 10),
              Text(
                "sajinTamangUIUX@figma.com",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: selectcolor().black,
                    fontFamily: "DM Sans"),
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.3,
          left: 35,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: selectcolor().white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ORDER #CS1020",
                        style: TextStyle(
                            // fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: selectcolor().black),
                      ),
                      Text(
                        "• IN PROGRESS",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: selectcolor().purple_text_color),
                      )
                    ],
                  ),
                ),
                divide(color: selectcolor().grey_color),
                spacer(spacer_height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,
                  child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            icon_btn_widget_class(
                              Width: 80,
                              height: 70,
                              bg_color: selectcolor().products_bg_color,
                              border_radius: 25,
                              img_widget: true,
                              img: productlist[index].product_img,
                              img_height: 70,
                              img_width: 70,
                            ),
                            spacer(spacer_width: 90, spacer_height: 5),
                            Text("${productlist[index].product_name}",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: selectcolor().black)),
                          ],
                        );
                      }),
                ),
                divide(color: selectcolor().grey_color),
                spacer(spacer_height: 25),
                Text(
                  "Your order is on its way!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: selectcolor().black,
                    fontFamily: "DM Sans",
                  ),
                ),
                spacer(spacer_height: 10),
                Text(
                  "Order will arrive in 3 days!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: selectcolor().grey_text_color,
                    fontFamily: "DM Sans",
                  ),
                ),
                spacer(spacer_height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 35,
                  // alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: selectcolor().themecolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        "TRACK",
                        style: TextStyle(
                            color: selectcolor().white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )),
                )
              ],
            ),
          ),
        ),
      ]),
      spacer(spacer_height: 20),
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.person_outline_sharp),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Account",
                    style: TextStyle(
                      color: selectcolor().black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "DM Sans",
                    ),
                  ),
                  spacer(spacer_height: 10),
                  Text(
                    "Edit your informations",
                    style: TextStyle(
                      color: selectcolor().grey_text_color,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: "DM Sans",
                    ),
                  )
                ],
              ),
            ),
            Icon(Icons.arrow_forward_outlined)
          ],
        ),
      )
    ]));
  }
}
