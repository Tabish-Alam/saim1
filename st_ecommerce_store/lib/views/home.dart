import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/cart.dart';
import 'package:st_ecommerce_store/views/cartlist.dart';
import 'package:st_ecommerce_store/views/categories.dart';
import 'package:st_ecommerce_store/views/headphone.dart';
import 'package:st_ecommerce_store/views/single_product.dart';
import 'package:st_ecommerce_store/views/speaker.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

List category_name = [
  {
    "name": "Speaker",
    "image": "assets/images/product_2.png",
    "items": "100+ Product",
    "Speaker": false,
  },
  {
    "name": "Headphone",
    "image": "assets/images/product_5.png",
    "items": "50+ Product",
    "Headphone": true,
  },
];

class _home_viewState extends State<home_view> {
  // bool on_pressed = false;

  on_pressed_click() {
    for (var index = 0; index < category_name.length; index++) {
      if (category_name[index]['name'] == "Speaker" &&
          category_name[index]['Speaker'] == true) {
        Categories_function();

        (Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => speakerlist_view(),
            )));
      } else if (category_name[index]['name'] == "Headphone" &&
          category_name[index]['Headphone'] == true) {
        Categories_function();

        (Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => headphonelist_view(),
            )));
      }
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().white,
        appBar: AppBar(
          backgroundColor: selectcolor().white,
          elevation: 0,
          leading: Icon(
            Icons.view_headline_outlined,
            color: selectcolor().black,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  child: Text(
                "Browse by Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )),
              Container(
                height: 350,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //   crossAxisSpacing: 10,
                      //   mainAxisSpacing: 10,
                      //   crossAxisCount: 2,
                      //   childAspectRatio: 1,
                      // )3
                      itemCount: category_name.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            on_pressed_click();
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: ((context) =>
                            //               speakerlist_view())));
                          },
                          child: Container(
                              // height: 100,
                              width: 250,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 80,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/bg_home_page.png"),
                                      height: 230,
                                      width: 230,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    // bottom: 50,
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              category_name[index]["image"]),
                                          height: 200,
                                          width: 200,
                                          fit: BoxFit.cover,
                                        ),
                                        Text(category_name[index]["name"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700)),
                                        Text(category_name[index]["items"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: selectcolor()
                                                    .grey_text_color))
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        );
                      }),
                ),
              ),
              Divider(color: selectcolor().grey_color, height: 1, thickness: 1),
              spacer(spacer_height: 30),
              Container(
                  child: Text(
                "Recommended for You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )),
              spacer(spacer_height: 30),
              Flexible(
                child: Container(
                  // height: 700,
                  width: double.infinity,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        crossAxisCount: 2,
                        // childAspectRatio: 1,
                        mainAxisExtent: 250,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      // scrollDirection: Axis.horizontal,
                      itemCount: productlist.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            icon_btn_widget_class(
                              Width: 200,
                              height: 250,
                              bg_color: selectcolor().products_bg_color,
                              border_radius: 25,
                              img_widget: true,
                              img: productlist[index].product_img,
                              img_height: 150,
                              img_width: 150,
                              img_title_text: productlist[index].product_name,
                              img_title_text_size: 20,
                              img_desc_text: productlist[index].product_price,
                              img_desc_text_size: 20,
                              img_with_text: true,
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
