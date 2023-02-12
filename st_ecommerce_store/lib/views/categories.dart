import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class categories_view extends StatefulWidget {
  const categories_view({super.key});

  @override
  State<categories_view> createState() => _categories_viewState();
}

class _categories_viewState extends State<categories_view> {
  PageController _slidercontroller = PageController();
  @override
  Widget build(BuildContext context) {
    categories_view;
    return Scaffold(
      backgroundColor: selectcolor().white,
      appBar: AppBar(
        backgroundColor: selectcolor().white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: selectcolor().black,
        ),
        centerTitle: true,
        title: Text(
          "Order Complete",
          style: TextStyle(color: selectcolor().black),
        ),
        actions: [Icon(Icons.drag_handle_outlined, color: selectcolor().black)],
      ),
      body: Container(
        width: double.infinity,
        child: Column(children: [
          Container(
            // alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.9,
            child: PageView.builder(
              controller: _slidercontroller,
              itemCount: productlist.length,
              itemBuilder: (context, index) => Container(

                  // height: 100,
                  width: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 120,
                        child: Image(
                          image:
                              AssetImage("assets/images/bg_category_page.png"),
                          height: 450,
                          width: 350,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                        left: 30,
                        // bottom: 50,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(productlist[index].product_img),
                              height: 300,
                              width: 300,
                              fit: BoxFit.cover,
                            ),
                            spacer(spacer_height: 15),
                            Text(productlist[index].product_name,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700)),
                            spacer(spacer_height: 15),
                            Text(productlist[index].product_price,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: selectcolor().grey_text_color)),
                            spacer(spacer_height: 15),
                            SmoothPageIndicator(
                              controller: _slidercontroller,
                              count: productlist.length,
                              effect: ExpandingDotsEffect(
                                dotColor: selectcolor().grey_text_color,
                                radius: 5,
                                dotHeight: 8,
                                dotWidth: 15,
                                activeDotColor: selectcolor().black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),

          // spacer(spacer_height: 10),

          Container(
            child: DefaultTabController(
              length: 4,
              child: TabBar(
                  indicatorColor: selectcolor().black,
                  labelColor: selectcolor().black,
                  unselectedLabelColor: selectcolor().grey_text_color,
                  labelStyle: TextStyle(fontWeight: FontWeight.w800),
                  indicatorWeight: 2.5,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text("View all"),
                    ),
                    Tab(
                      child: Text("Portable"),
                    ),
                    Tab(
                      child: Text("Multiroom"),
                    ),
                    Tab(
                      child: Text("Architectural"),
                    )
                  ]),
            ),
          ),

          spacer(spacer_height: 20),

          TabBarView(children: [
            tabview_class(),
            Text("Portable"),
            Text("Multiroom"),
            Text("data"),
          ])
        ]),
      ),
      floatingActionButton: InkWell(
          onTap: () {},
          child: CircleAvatar(
              radius: 30,
              backgroundColor: selectcolor().themecolor,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: selectcolor().black,
                size: 35,
              ))),
    );
  }
}

class tabview_class extends StatelessWidget {
  const tabview_class({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        itemCount: productlist.length,
        itemBuilder: (context, index) {
          return Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.7,
              padding: EdgeInsets.fromLTRB(40, 0, 40, 25),
              child: Container(
                  decoration: BoxDecoration(
                      color: selectcolor().products_bg_color,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 100,
                  // width: MediaQuery.of(context).size.width*0.6,
                  child: Container(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(productlist[index].product_img),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productlist[index].product_name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              Row(
                                children: [
                                  Text(productlist[index].product_rating,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: selectcolor().black)),
                                  spacer(spacer_width: 20),
                                  Container(
                                    child: Row(
                                      children: [
                                        rating_box(
                                            box_color:
                                                selectcolor().themecolor),
                                        rating_box(
                                            box_color:
                                                selectcolor().themecolor),
                                        rating_box(
                                            box_color:
                                                selectcolor().themecolor),
                                        rating_box(
                                            box_color:
                                                selectcolor().themecolor),
                                        rating_box(
                                            box_color:
                                                selectcolor().grey_text_color),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text(productlist[index].product_price,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: selectcolor().grey_text_color)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
