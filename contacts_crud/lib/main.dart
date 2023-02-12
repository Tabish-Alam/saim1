import 'package:contacts_crud/contact_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(contactui());
}

class contactui extends StatelessWidget {
  const contactui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: contact_view(),
      debugShowCheckedModeBanner: false,
    );
  }
}
