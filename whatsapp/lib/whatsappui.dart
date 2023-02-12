import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/chatsmodel.dart';

class Whatsappui extends StatelessWidget {
  final mystyle = TextStyle(fontSize: 40);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Color(0xFF128c7e),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.groups),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            )
          ]),
        ),
        body: Container(
          child: TabBarView(children: [
            Center(
              child: Text(
                "Groups",
                style: mystyle,
              ),
            ),
            chat_view(),
            status_view(),
            calls_view(),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF128c7e),
        ),
      ),
    );
  }
}

chat_view() {
  return ListView.builder(
    itemCount: chatData.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(chatData[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatData[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatData[index].message),
        trailing: Text(
          chatData[index].time,
          style: TextStyle(
            height: -1,
          ),
        ),
      );
    },
  );
}

status_view() {
  return ListView.builder(
    itemCount: chatData.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(chatData[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatData[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatData[index].time),
      );
    },
  );
}

calls_view() {
  return ListView.builder(
    itemCount: chatData.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(chatData[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatData[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatData[index].time),
        trailing: Icon(
          Icons.call,
          color: Color(0xFF128c7e),
        ),
      );
    },
  );
}
