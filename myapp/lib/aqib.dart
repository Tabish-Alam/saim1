import 'package:flutter/material.dart';

class Aqib extends StatelessWidget {
  const Aqib({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      //for circle image
      child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://img.wattpad.com/26db9b4a0fe8ace7d30fa2cfee139d80251d3b90/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f654533305066576847616f4c64413d3d2d3735373537303630322e3135623064303733623531353164663635333638393638383738302e6a7067?s=fit&w=720&h=720')),
      backgroundColor: Colors.blue,
    );
  }
}
