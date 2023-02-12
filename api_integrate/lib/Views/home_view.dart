import 'package:api_integrate/Controller/home_controller.dart';
import 'package:api_integrate/Views/User_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class api_integration extends StatefulWidget {
  const api_integration({super.key});

  @override
  State<api_integration> createState() => _api_integrationState();
}

class _api_integrationState extends State<api_integration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: json_file(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => user_profile(
                            userid: snapshot.data[index].id,
                          ),
                        )),
                    child: ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].address.zipcode),
                    ),
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
