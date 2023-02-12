import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/cart.dart';
import 'package:st_ecommerce_store/views/cartlist.dart';
import 'package:st_ecommerce_store/views/filter.dart';

class single_product_view extends StatefulWidget {
  const single_product_view({super.key});

  @override
  State<single_product_view> createState() => _single_product_viewState();
}

// colors list
List availableColor = <Color>[
  selectcolor().themecolor,
  selectcolor().product_color1,
  selectcolor().product_color2,
];
Color selectedColor = availableColor[0];

class _single_product_viewState extends State<single_product_view> {
  var color1;

  add_to_cart() {
    List cartlist = [];
    // product_add_to_cart = true;

    productlist.forEach((productlist) {
      // for (var index = 0; index < productlist.length; index++) {
      // productlist[index].product_add_to_cart = true;
      if (productlist.product_add_to_cart == false) {
        cartlist.add(productlist);
      }
      // }
    });
    // print(prod);

    print(cartlist);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => cartlist_view(cartitems: cartlist),
        ));
    // for (var index = 0; index < productlist.length; index++) {
    //   if (productlist[index].product_add_to_cart == true) {}
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: selectcolor().transparent,
      appBar: AppBar(
        backgroundColor: selectcolor().transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: selectcolor().black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:
                Icon(Icons.shopping_bag_outlined, color: selectcolor().black),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 40,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Speakers",
                      style: TextStyle(
                          color: selectcolor().grey_text_color,
                          fontFamily: "DM Sans",
                          fontSize: 15),
                    ),
                    spacer(spacer_height: 10),
                    Text(
                      "Beosound\nBalance",
                      style: TextStyle(
                          color: selectcolor().black,
                          fontFamily: "DM Sans",
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                    spacer(spacer_height: 50),
                    Text(
                      "From",
                      style: TextStyle(
                        color: selectcolor().grey_text_color,
                        fontFamily: "DM Sans",
                        fontSize: 15,
                        // fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                      "S1,600",
                      style: TextStyle(
                          color: selectcolor().black,
                          fontFamily: "DM Sans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    spacer(spacer_height: 40),
                    Text(
                      "Available Colors",
                      style: TextStyle(
                        color: selectcolor().grey_text_color,
                        fontFamily: "DM Sans",
                        fontSize: 15,
                        // fontWeight: FontWeight.w700
                      ),
                    ),
                    spacer(spacer_height: 10),
                    rating_box(),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: availableColor.length,
                        itemBuilder: (context, index) {
                          return available_color_box(
                              box_height: 30,
                              box_width: 30,
                              box_color: availableColor[index]);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.53,
              child: Container(
                decoration: BoxDecoration(color: selectcolor().white),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      spacer(spacer_height: 100),
                      Text(
                        "Wireless, smart home speaker",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: selectcolor().black,
                            fontFamily: "DM Sans",
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      spacer(spacer_height: 20),
                      Text(
                        "A wireless speaker with a dynamic acoustic\nperformance designed to be positioned up\nagainst the wall on a shelf or side table in your\nhome. Impressive sound compared to its size.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: selectcolor().grey_text_color,
                          fontFamily: "DM Sans",
                          fontSize: 15,
                          // fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.28,
              left: 180,
              child: Image.asset(
                "assets/images/product_2.png",
                height: 400,
                width: 200,
                fit: BoxFit.cover,
                // alignment: Alignment.topRight,
              ),
            ),

            // add to cart button

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1,
              child: order_btn_suffix_widget_class(
                height: 50,
                width: 330,
                bg_color: selectedColor,
                border_radius: 10,
                text: "Add to Cart",
                text_color: selectcolor().white,
                text_size: 15,
                suffix: false,
                on_press: () {
                  add_to_cart();
                },
              ),
            ),
            // spacer(spacer_height: 40)
          ],
        ),
      ),
    );
  }

  Widget available_color_box({
    final box_height,
    final box_width,
    final box_color,
  }) =>
      Container(
        child: InkWell(
          onTap: () {
            setState(() {
              selectedColor = box_color;
            });
          },
          child: Stack(children: [
            // box

            Container(
              height: box_height,
              width: box_width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: box_color),
            ),

            Container(
              height: box_height,
              width: box_width,
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                size: 20,
                color: selectedColor == box_color
                    ? Colors.black
                    : Colors.transparent,
              ),
            ),

            spacer(spacer_width: 40),
          ]),
        ),
      );
}
