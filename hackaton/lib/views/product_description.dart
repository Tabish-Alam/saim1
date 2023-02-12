import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';

import '../Custom Widget/customwidget.dart';

class product_description_view extends StatefulWidget {
  const product_description_view({super.key});

  @override
  State<product_description_view> createState() =>
      _product_description_viewState();
}

class _product_description_viewState extends State<product_description_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Selectcolor().white,
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/product_description_bg.png",
                      width: MediaQuery.of(context).size.width * 1,
                      // height: MediaQuery.of(context).size.height * 0.6,
                      // scale: 1,
                      color: Colors.red,

                      fit: BoxFit.scaleDown,
                    ),
                    Image.asset(
                      "assets/product_description_vector.png",
                      width: MediaQuery.of(context).size.width * 1,
                      fit: BoxFit.cover,
                    ),

                    // appbar start
                    Container(
                        alignment: Alignment.topCenter,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: appbar_widget()),
                    // appbar end

                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Air Purifier",
                                            // textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                                fontWeight: FontWeight.bold,
                                                color: Selectcolor()
                                                    .text_blue_order_color),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                          ),
                                          Container(
                                            child: Image.asset(
                                              "assets/product_description_vector_2.png",
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Rating widget
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Selectcolor().white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        alignment: Alignment.centerRight,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                child: Icon(
                                              select_icons().icon_rating,
                                              color: Selectcolor()
                                                  .text_green_order_color,
                                            )),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.03,
                                            ),
                                            Text(
                                              "4.8",
                                              // textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.02,
                                                  fontWeight: FontWeight.bold,
                                                  color: Selectcolor()
                                                      .text_green_order_color),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // rating widget
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  "Watermelon\nPeperomia",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Selectcolor().text_blue_order_color),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Text(
                                "PRICE",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Selectcolor()
                                        .product_description_grey_text),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.005,
                              ),
                              Text(
                                "\$350",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Selectcolor().text_blue_order_color),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                              ),
                              Text(
                                "SIZE",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Selectcolor()
                                        .product_description_grey_text),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.005,
                              ),
                              Text(
                                "5\"h",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                    fontWeight: FontWeight.bold,
                                    color: Selectcolor().text_blue_order_color),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.width * 0.9,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.08,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.085,
                                width: MediaQuery.of(context).size.width * 0.18,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        blurStyle: BlurStyle.normal,
                                        color: Selectcolor().grey_text_color,
                                        spreadRadius: 4,
                                        // offset: Offset.infinite
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(25),
                                    color:
                                        Selectcolor().text_green_order_color),
                                child: Image.asset(
                                  "assets/product_description_icon_btn.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  // scale: 0.7,
                                  // fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.085,
                                width: MediaQuery.of(context).size.width * 0.18,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      blurStyle: BlurStyle.normal,
                                      color: Selectcolor().grey_text_color,
                                      spreadRadius: 4,
                                      // offset: Offset.infinite
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(25),
                                  color: Selectcolor().white,
                                ),
                                child: Image.asset(
                                  "assets/product_description_icon_btn_2.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  // scale: 0.7,
                                  // fit: BoxFit.contain,
                                ),
                              ),

                              // SizedBox(
                              //   width: MediaQuery.of(context).size.width * 0.01,
                              // ),

                              // product image
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // top: MediaQuery.of(context).size.height * 0.5,
                      left: MediaQuery.of(context).size.width * 0.45,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Image.asset(
                          "assets/product_img_1.png",
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 1,
                          scale: 1,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Overview",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Selectcolor().text_blue_order_color),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    product_description_overview_widget(
                      widget_height: MediaQuery.of(context).size.height * 0.8,
                      widget_width: MediaQuery.of(context).size.width * 0.3,
                      icon: select_icons().icon_water_drop,
                      icon_size: MediaQuery.of(context).size.height * 0.05,
                      // icon_width: MediaQuery.of(context).size.width * 0.01,
                      title_text: "250ml",
                      title_size: MediaQuery.of(context).size.height * 0.025,
                      subtitle_text: "Water",
                      subtitle_size: MediaQuery.of(context).size.height * 0.025,
                    ),
                    product_description_overview_widget(
                      widget_height: MediaQuery.of(context).size.height * 0.8,
                      widget_width: MediaQuery.of(context).size.width * 0.3,
                      icon: select_icons().icon_sun,
                      icon_size: MediaQuery.of(context).size.height * 0.05,
                      // icon_width: MediaQuery.of(context).size.width * 0.01,
                      title_text: "35-40%",
                      title_size: MediaQuery.of(context).size.height * 0.025,
                      subtitle_text: "Light",
                      subtitle_size: MediaQuery.of(context).size.height * 0.025,
                    ),
                    product_description_overview_widget(
                      widget_height: MediaQuery.of(context).size.height * 0.8,
                      widget_width: MediaQuery.of(context).size.width * 0.3,
                      icon: select_icons().icon_fertilizer,
                      icon_size: MediaQuery.of(context).size.height * 0.05,
                      // icon_width: MediaQuery.of(context).size.width * 0.01,
                      title_text: "250gm",
                      title_size: MediaQuery.of(context).size.height * 0.025,
                      subtitle_text: "Fertilizer",
                      subtitle_size: MediaQuery.of(context).size.height * 0.025,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Plant Bio",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Selectcolor().text_blue_order_color),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      // fontWeight: FontWeight.bold,
                      color: Selectcolor().product_description_grey_text),
                ),
              ),
            ],
          )),
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
              color: Selectcolor().text_green_order_color,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        select_icons().icon_shopping_bag,
                        color: Selectcolor().white,
                        size: MediaQuery.of(context).size.height * 0.04,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text(
                        "View 3 items",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            // fontWeight: FontWeight.bold,
                            color: Selectcolor().grey_text_color),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$1090",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Selectcolor().white),
                ),
              ],
            ),
          )),
    );
  }
}
