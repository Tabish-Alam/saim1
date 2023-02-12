import 'package:flutter/material.dart';
import 'package:myapp/aqib.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Aqib(),
      appBar: AppBar(),
      body: Column(
        children: [
          customwidget(Colors.purple),
          customwidget(Colors.purple),
          SizedBox(height: 10),
          customwidget(Colors.purple),
          customwidget(Colors.purple),
          customwidget(Colors.purple),
          customwidget(Colors.purple),
        ],
      ),
    );
  }
}

customwidget(color_selector) {
  return Container(
    height: 100,
    width: 100,
    color: color_selector,
    child: Text("Custom Container"),
  );
}
