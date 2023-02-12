import 'package:contacts_crud/customwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class contact_view extends StatefulWidget {
  contact_view({super.key});

  @override
  State<contact_view> createState() => _contact_viewState();
}

class _contact_viewState extends State<contact_view> {
  List<Map> productslist = [
    {
      "s.no": "1",
      "name": "phone",
      "price": 25000,
      "isfavourite": false,
      "addtocart": false
    },
    {
      "s.no": "2",
      "name": "charger",
      "price": 250,
      "isfavourite": false,
      "addtocart": false
    },
    {
      "s.no": "3",
      "name": "battery",
      "price": 2000,
      "isfavourite": false,
      "addtocart": false
    },
    {
      "s.no": "4",
      "name": "cover",
      "price": 300,
      "isfavourite": false,
      "addtocart": false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"), actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        PopupMenuButton(
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  child: TextButton(
                onPressed: () {
                  PopupMenuItem(
                      child: TextButton(
                          onPressed: () {},
                          child: black_text(write_text: "A-Z")));
                },
                child: black_text(write_text: "Sort by"),
              )),
              PopupMenuItem(
                  child: TextButton(
                      onPressed: () {},
                      child: black_text(write_text: "Delete all")))
            ];
          },
        )
      ]),
      body: ListView.builder(
        itemCount: productslist.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productslist[index]["name"]),
            subtitle: Text(productslist[index]["price"].toString()),
            trailing: Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(),
                Icon(Icons.shopping_cart)
              ],
            ),
          );
        },
      ),

      // /
    );
  }
}
