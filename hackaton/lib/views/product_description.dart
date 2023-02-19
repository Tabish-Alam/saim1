import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/drawer.dart';
import 'package:hackaton/views/home.dart';

import '../Custom Widget/customwidget.dart';

class product_description_view extends StatefulWidget {
  final DocumentSnapshot documentSnapshot;
  product_description_view({super.key, required this.documentSnapshot});

  @override
  State<product_description_view> createState() =>
      _product_description_viewState();
}

class _product_description_viewState extends State<product_description_view> {
  // database connection start
  final CollectionReference _database =
      FirebaseFirestore.instance.collection("plants_database");
  final CollectionReference _favourite =
      FirebaseFirestore.instance.collection("favourite_database");

  var favourite = false;

// database connection end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Selectcolor().white,
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/product_description_bg.png",
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.6,
                    // scale: 1,
                    // color: Colors.red,

                    fit: BoxFit.contain,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/main_logo.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Image.asset("assets/main_logo_text.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  select_icons().icon_search,
                                  color: Selectcolor().black,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => drawer_view(),
                                            maintainState: true));
                                  },
                                  child: Icon(
                                    select_icons().icon_menu,
                                    color: Selectcolor().black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  // appbar end

                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                                      width: MediaQuery.of(context).size.width *
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
                                                fontSize: MediaQuery.of(context)
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
                                widget.documentSnapshot["name"],
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Selectcolor().text_blue_order_color),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text(
                              "PRICE",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.023,
                                  fontWeight: FontWeight.bold,
                                  color: Selectcolor()
                                      .product_description_grey_text),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.005,
                            ),
                            Text(
                              "\$${widget.documentSnapshot["price"]}",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.023,
                                  fontWeight: FontWeight.bold,
                                  color: Selectcolor().text_blue_order_color),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Text(
                              "SIZE",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.023,
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
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.023,
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
                                  color: Selectcolor().text_green_order_color),
                              child: Image.asset(
                                "assets/product_description_icon_btn.png",
                                width: MediaQuery.of(context).size.width * 0.03,
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
                                width: MediaQuery.of(context).size.width * 0.03,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                // scale: 0.7,
                                // fit: BoxFit.contain,
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),

                            // product image
                          ],
                        ),
                      ),
                    ),
                  ),
// product image start
                  Positioned(
                    // top: MediaQuery.of(context).size.height * 0.5,
                    left: MediaQuery.of(context).size.width * 0.45,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Image.asset(
                        widget.documentSnapshot["img"],
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 1,
                        scale: 1,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                  // product image end
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.04,

                    // alignment: Alignment.bottomLeft,
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
                  Center(
                    child: Container(
                      // alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height * 0.05,
                      // width: MediaQuery.of(context).size.width * 1,
                      // width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          product_description_overview_widget(
                            widget_height:
                                MediaQuery.of(context).size.height * 0.1,
                            widget_width:
                                MediaQuery.of(context).size.width * 0.25,
                            icon: select_icons().icon_water_drop,
                            icon_size:
                                MediaQuery.of(context).size.height * 0.035,
                            // icon_width: MediaQuery.of(context).size.width * 0.01,
                            title_text:
                                "${widget.documentSnapshot["water_contain"]} %",
                            title_size:
                                MediaQuery.of(context).size.height * 0.02,
                            subtitle_text: "Water",
                            subtitle_size:
                                MediaQuery.of(context).size.height * 0.02,
                          ),
                          product_description_overview_widget(
                            widget_height:
                                MediaQuery.of(context).size.height * 0.4,
                            widget_width:
                                MediaQuery.of(context).size.width * 0.25,
                            icon: select_icons().icon_sun,
                            icon_size:
                                MediaQuery.of(context).size.height * 0.03,
                            // icon_width: MediaQuery.of(context).size.width * 0.01,
                            title_text:
                                "${widget.documentSnapshot["light_contain"]} %",
                            title_size:
                                MediaQuery.of(context).size.height * 0.02,
                            subtitle_text: "Light",
                            subtitle_size:
                                MediaQuery.of(context).size.height * 0.02,
                          ),
                          product_description_overview_widget(
                            widget_height:
                                MediaQuery.of(context).size.height * 0.4,
                            widget_width:
                                MediaQuery.of(context).size.width * 0.25,
                            icon: select_icons().icon_fertilizer,
                            icon_size:
                                MediaQuery.of(context).size.height * 0.03,
                            // icon_width: MediaQuery.of(context).size.width * 0.01,
                            title_text:
                                "${widget.documentSnapshot["fertilizer_contain"]} %",
                            title_size:
                                MediaQuery.of(context).size.height * 0.02,
                            subtitle_text: "Fertilizer",
                            subtitle_size:
                                MediaQuery.of(context).size.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Similar Plants",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Selectcolor().text_blue_order_color),
                    ),
                  ),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.01,
                  // ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: plants_widget()),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(
            height: MediaQuery.of(context).size.height * 0.06,
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
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
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
            )));
  }

  Widget plants_widget() {
    return Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.08,
        child: StreamBuilder(
            stream: _database.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];

                    var productID;

                    return InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => product_description_view(
                              documentSnapshot: documentSnapshot,
                            ),
                          )),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.25,
                            // color: Colors.green,
                            child: Stack(
                              children: [
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.height * 0.06,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    decoration: BoxDecoration(
                                      color: plant_widget_colors[index],
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Air Purifier",
                                                      // textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.02,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Selectcolor()
                                                              .text_blue_order_color),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                    ),
                                                    Container(
                                                      child: Image.asset(
                                                        "assets/product_description_vector_2.png",
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.05,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.0001,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                child: Text(
                                                  documentSnapshot['name'],
                                                  // textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.025,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Selectcolor()
                                                          .text_blue_order_color),
                                                ),
                                              ),
                                              // SizedBox(
                                              //   height: MediaQuery.of(context)
                                              //           .size
                                              //           .height *
                                              //       0.01,
                                              // ),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "\$${documentSnapshot['price'].toString()}",
                                                      // textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.025,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Selectcolor()
                                                              .text_blue_order_color),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        if (favourite ==
                                                            false) {
                                                          // documentSnapshot[index]
                                                          //   ['favourite']
                                                          setState(() {
                                                            favourite = true;
                                                            // _favourite.add(
                                                            //     documentSnapshot[
                                                            //         index]);
                                                          });
                                                        } else if (favourite =
                                                            true) {
                                                          //     String? id;
                                                          // _favourite
                                                          //     .doc(id)
                                                          //     .delete();
                                                          setState(() {
                                                            favourite = false;
                                                          });
                                                        }
                                                        print(_favourite);
                                                      },
                                                      child: Container(
                                                        child: Image.asset(
                                                          "assets/product_description_icon_btn_2.png",
                                                          color: favourite ==
                                                                  true
                                                              ? Selectcolor()
                                                                  .red_favourite
                                                              : Selectcolor()
                                                                  .text_blue_order_color,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.2,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.2,
                                                          // scale: 0.7,
                                                          // fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left:
                                      MediaQuery.of(context).size.width * 0.35,
                                  // top: MediaQuery.of(context).size.height * 0.0,
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.07,
                                  child: Container(
                                    // alignment: Alignment.topRight,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Image.asset(documentSnapshot['img']),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
