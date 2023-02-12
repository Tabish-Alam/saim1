import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/checkout.dart';
import 'package:hackaton/views/home.dart';

class navbar_view extends StatefulWidget {
  const navbar_view({super.key});

  @override
  State<navbar_view> createState() => _navbar_viewState();
}

class _navbar_viewState extends State<navbar_view> {
  var _current_index = 0;
  List navigation_pages = [
    home_view(),
    Center(
      child: Text("Favourite Products Here"),
    ),
    checkout_view(),
    Center(child: Text("User Acount Here")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigation_pages[_current_index],
      bottomNavigationBar: BottomNavigationBar(
          // bottom navigation bar start
          unselectedItemColor: Selectcolor().product_description_grey_text,
          selectedItemColor: Selectcolor().black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _current_index,
          onTap: (index) {
            setState(() {
              _current_index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                select_icons().icon_home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(select_icons().icon_favourite),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(select_icons().icon_shopping_bag),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(select_icons().icon_account),
              label: "",
            ),
          ]),

      // bottom navigation bar end
    );
  }
}
