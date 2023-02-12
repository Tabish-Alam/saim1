import 'dart:collection';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              "Proper Box",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          height: 1000,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              custombox(Colors.blueAccent),
              SizedBox(
                width: 10,
              ),
              custombox(Colors.lightGreen),
              SizedBox(
                width: 10,
              ),
              custombox(Colors.yellowAccent)
            ],
          ),
        ),
      ),
    );
  }
}

custombox(select_color) {
  return Container(
    height: 100,
    width: 100,
    // margin: EdgeInsets.all(5),
    padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border:
            Border.all(color: Colors.black, width: 2, style: BorderStyle.solid),
        color: select_color),
    child: Text("Widget #",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        selectionColor: Colors.red,
        style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "Times New Roman",
            fontWeight: FontWeight.w600)),
  );
}
