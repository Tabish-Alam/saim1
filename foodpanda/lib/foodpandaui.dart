import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodpanda/properties.dart';

class foodpandaui extends StatelessWidget {
  const foodpandaui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(app_name, textAlign: TextAlign.justify),
          backgroundColor: app_color,
          actions: [Icon(Icons.shopping_bag_outlined)],
        ),
        body: Column(),
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in/ Create account",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: app_color),
            ),
            // ElevatedButton(
            //   style: ButtonStyle(),
            //   onPressed: null,
            //   child: Row(
            //     children: [
            //       Icon(
            //         Icons.help_outline,
            //         color: app_color,
            //         size: 23,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            //         child: Text(
            //           "Help Center",
            //           style: TextStyle(fontSize: 16, color: Colors.black87),
            //         ),
            //       ),
            // ],
            // ),
            // ),
            draweritems("Help Center", Icons.help_outline),
            draweritems("foodpanda for business", Icons.business_rounded),
            Divider(color: Colors.grey),
            draweritems_nologo("Settings"),
            draweritems_nologo("Terms & Conditions/ Privacy"),
          ]),
        ),
      ),
    );
  }
}

draweritems([navitems, navicons]) {
  return ListTile(
    leading: Icon(
      navicons,
      color: app_color,
    ),
    title: Text(navitems),
    onTap: () {
      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewScreen(),)),
      Colors.grey;
      Text(
        navitems,
        style: TextStyle(color: Colors.grey),
      );
    },
  );
}

draweritems_nologo([navitems]) {
  return ListTile(
    title: Text(navitems),
    onTap: () {
      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewScreen(),)),
      Colors.grey;
      Text(
        navitems,
        style: TextStyle(color: Colors.grey),
      );
    },
  );
}
