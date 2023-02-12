import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

// List products = [
//   {"name": "Biryani", "price": "200"}
// ];

class _MyWidgetState extends State<MyWidget> {
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  addproduct() {
    CollectionReference products =
        FirebaseFirestore.instance.collection("products");
    products.add({"name": productName.text, "price": productPrice.text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(controller: productName),
          SizedBox(
            height: 20,
          ),
          TextFormField(controller: productPrice),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                addproduct();
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
