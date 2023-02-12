import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:st_ecommerce_store/properties.dart';

class productlist_class {
  final product_sno;
  final product_name;
  final product_price;
  final product_img;
  final product_description;
  final product_color;
  final product_category;
  final bool? product_add_to_cart;
  final bool speaker;
  final bool headphone;
  final product_rating;

  productlist_class({
    this.speaker = false,
    this.headphone = false,
    this.product_sno,
    this.product_name,
    this.product_price,
    this.product_img,
    this.product_description,
    this.product_color = Colors.yellowAccent,
    this.product_category,
    this.product_add_to_cart = false,
    this.product_rating,
  });
}

List<productlist_class> productlist = [
  productlist_class(
      product_sno: 1,
      product_name: "Beosound 1",
      product_price: "400",
      product_img: "assets/images/product_1.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "speakers",
      product_rating: "4.0"),
  productlist_class(
      product_sno: 2,
      product_name: "Beosound 2",
      product_price: "600",
      product_img: "assets/images/product_2.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "speakers",
      product_rating: "4.0"),
  productlist_class(
      product_sno: 3,
      product_name: "Beoplay H4 2…",
      product_price: "200",
      product_img: "assets/images/product_5.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "headphones",
      headphone: true,
      product_rating: "3.0"),
  productlist_class(
      product_sno: 4,
      product_name: "Beoplate 1",
      product_price: "700",
      product_img: "assets/images/product_6.png",
      product_description:
          "A wireless speaker with a dynamic acoustic performance designed to be positioned up against the wall on a shelf or side table in your home. Impressive sound compared to its size.",
      product_category: "speakers",
      headphone: true,
      product_rating: "2.0"),
];

// Adding items to category list

Categories_function() {
  speakerlist.clear();
  headphonelist.clear();
  for (var index = 0; index < productlist.length; index++) {
    // productlist.forEach((productlist) {
    if (productlist[index].product_category == "speakers") {
      speakerlist.add(productlist[index]);
    } else if (productlist[index].product_category == "headphones") {
      headphonelist.add(productlist[index]);
    }
  }
  ;
  print(headphonelist);
}

// speakers

// headphone_function() {

//   productlist.forEach((productlist) {
//     if (productlist.product_category == "headphones") {
//       headphonelist.add(productlist);
//     }
//   });
//   print(headphonelist);
// }

List speakerlist = [];

List headphonelist = [];
