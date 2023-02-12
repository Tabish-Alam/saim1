import 'package:api_integrate/Controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class user_profile extends StatefulWidget {
  final userid;
  user_profile({super.key, this.userid});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  // var userID = ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: FutureBuilder(
      future: user_data(widget.userid),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // return Text("HELLO");
                return ListTile(
                    title: Text(snapshot.data.name),
                    subtitle: Text(snapshot.data.address.zipcode),
                    leading: Text(snapshot.data.id.toString()),
                    trailing: Text(snapshot.data.name));
              });
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    )));
  }
}
