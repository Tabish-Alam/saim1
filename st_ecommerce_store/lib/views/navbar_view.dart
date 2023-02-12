import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/home.dart';
import 'package:st_ecommerce_store/views/order%20failed.dart';
import 'package:st_ecommerce_store/views/order%20successful.dart';

class navbar_view extends StatefulWidget {
  const navbar_view({super.key});

  @override
  State<navbar_view> createState() => _navbar_viewState();
}

class _navbar_viewState extends State<navbar_view> {
  int selected_index = 0;
  List<Widget> pagelist = <Widget>[
    order_failed_view(),
    order_successful_view(),
    home_view()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagelist.elementAt(selected_index),
      bottomNavigationBar: GNav(
          selectedIndex: selected_index,
          onTabChange: (value) {
            setState(() {
              selected_index = value;
            });
          },
          gap: 12,
          activeColor: selectcolor().black,
          color: selectcolor().black,
          tabBackgroundColor: selectcolor().themecolor,
          padding: EdgeInsets.all(15),
          tabs: [
            GButton(
                icon: Icons.home_outlined,
                iconSize: 30,
                text: "Home",
                textSize: 25,
                textStyle: TextStyle(fontWeight: FontWeight.w700)),
            GButton(
                icon: Icons.search_outlined,
                iconSize: 30,
                text: "Search",
                textSize: 25,
                textStyle: TextStyle(fontWeight: FontWeight.w700)),
            GButton(
                icon: Icons.shopping_bag_outlined,
                iconSize: 30,
                text: "Order",
                textSize: 25,
                textStyle: TextStyle(fontWeight: FontWeight.w700)),
            GButton(
                icon: Icons.person_outline,
                iconSize: 30,
                text: "user",
                textSize: 25,
                textStyle: TextStyle(fontWeight: FontWeight.w700)),
          ]),
    );
  }
}
