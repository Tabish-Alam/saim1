import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackaton/Custom%20Widget/customwidget.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/checkout.dart';
import 'package:hackaton/views/order_done.dart';
import 'package:hackaton/utils/productlist.dart';
import 'package:hackaton/views/product_description.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

List plant_widget_colors = [
  Selectcolor().green_bg,
  Selectcolor().plant_widget_bg_color_1,
  Selectcolor().plant_widget_bg_color_2,
  Selectcolor().plant_widget_bg_color_3,
  Selectcolor().plant_widget_bg_color_4,
  Selectcolor().plant_widget_bg_color_3,
];

class _home_viewState extends State<home_view> {
// database connection start
  final CollectionReference _database =
      FirebaseFirestore.instance.collection("plants_database");
  final CollectionReference _favourite =
      FirebaseFirestore.instance.collection("favourite_database");

// database connection end

  var _current_index = 0;
  List navigation_pages = [
    home_view(),
    Center(
      child: Text("Favourite Products Here"),
    ),
    checkout_view(),
    Center(child: Text("User Acount Here")),
  ];

  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Selectcolor().white,
          appBar: AppBar(
              backgroundColor: Selectcolor().transparent,
              elevation: 0.0,
              title: appbar_widget()),
          body: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            child: Column(children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("assets/home_banner.png"),
                          fit: BoxFit.contain)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "There’s a Plant\nfor everyone",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.025,
                              fontWeight: FontWeight.bold,
                              color: Selectcolor().text_blue_order_color),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Get your 1st plant\n@ 40% off",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Selectcolor().text_blue_order_color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // text box start
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      // initialValue: "Search",
                      autofocus: true,
                      enabled: true,
                      decoration: InputDecoration(
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Selectcolor().black, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Selectcolor().black, width: 1)),
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          prefix: Icon(select_icons().icon_search),
                          suffix: Icon(select_icons().icon_scan),
                          // label: Row(
                          //   children: [
                          //     Icon(select_icons().icon_search),
                          //     SizedBox(
                          //       width: MediaQuery.of(context).size.width * 0.02,
                          //     ),
                          //     Text("Search",
                          //         style: TextStyle(color: Selectcolor().black)),
                          //   ],
                          // ),
                          // floatingLabelAlignment: FloatingLabelAlignment.center,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Selectcolor().black)),
                    ),
                  ),
                  // text box end
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),

                  // Plants widget start
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Selectcolor().black,
                        width: 1,
                      ),
                    ),
                    child: Icon(select_icons().icon_filter),
                  )
                ],
              ),
              // SizedBox(
              // height: MediaQuery.of(context).size.height * 0.05,
              // ),

              // tabbar start

              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TabBar(
                    indicatorColor: Selectcolor().text_green_order_color,
                    labelColor: Selectcolor().text_green_order_color,
                    unselectedLabelColor: Selectcolor().black,
                    labelStyle: TextStyle(fontWeight: FontWeight.w800),
                    indicatorWeight: 2.5,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text("Top Pick"),
                      ),
                      Tab(
                        child: Text("Indoor"),
                      ),
                      Tab(
                        child: Text("Outdoor"),
                      ),
                      Tab(
                        child: Text("Seeds"),
                      ),
                      Tab(
                        child: Text("Plants"),
                      )
                    ]),
              ),

              Expanded(
                child: TabBarView(children: [
                  // tabview_class(),
                  plants_widget(),
                  Text("Portable"),
                  Text("Portable"),
                  Text("Multiroom"),
                  Text("data"),
                ]),
              ),

              // tabbar end
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.32,
              // ),

              // Plants widget start
            ]),
          ),
        ));
  }

  Widget plants_widget() {
    return Container(
        child: StreamBuilder(
            stream: _database.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
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
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.32,
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
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                            "assets/home_product_widget_bg.png",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.25,
                                            color: plant_widget_colors[index],
                                            fit: BoxFit.contain),
                                        Image.asset(
                                          "assets/product_description_vector.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.25,
                                          fit: BoxFit.contain,
                                        ),
                                        Positioned(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
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
                                                    0.5,
                                                child: Text(
                                                  documentSnapshot['name'],
                                                  // textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Selectcolor()
                                                          .text_blue_order_color),
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
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
                                                              0.03,
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
                                                        if (documentSnapshot[
                                                                        index][
                                                                    "favourite"] ==
                                                                false &&
                                                            favourite ==
                                                                false) {
                                                          // documentSnapshot[index]
                                                          //   ['favourite']

                                                          favourite = true;

                                                          _database
                                                              .doc(
                                                                  documentSnapshot[
                                                                      index])
                                                              .update({
                                                            'favourite':
                                                                documentSnapshot[
                                                                            index]
                                                                        [
                                                                        "favourite"] =
                                                                    favourite
                                                          });

                                                          _favourite.add(
                                                              documentSnapshot[
                                                                  index]);
                                                        } else if (documentSnapshot[
                                                                        index][
                                                                    "favourite"] ==
                                                                true &&
                                                            favourite == true) {
                                                          // documentSnapshot[index]
                                                          //   ['favourite']

                                                          favourite = false;

                                                          _database
                                                              .doc(
                                                                  documentSnapshot[
                                                                      index])
                                                              .update({
                                                            'favourite':
                                                                documentSnapshot[
                                                                            index]
                                                                        [
                                                                        "favourite"] =
                                                                    favourite
                                                          });

                                                          _favourite
                                                              .doc(
                                                                  documentSnapshot[
                                                                      index])
                                                              .delete();
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
                                                              0.1,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1,
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
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.06,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.14,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Selectcolor()
                                                              .text_green_order_color),
                                                      child: Image.asset(
                                                        "assets/product_description_icon_btn.png",
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.03,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                        // scale: 0.7,
                                                        // fit: BoxFit.contain,
                                                      ),
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
                                  left: MediaQuery.of(context).size.width * 0.5,
                                  // top: MediaQuery.of(context).size.height * 0.0,
                                  bottom:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Container(
                                    // alignment: Alignment.topRight,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.width *
                                        0.55,
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
