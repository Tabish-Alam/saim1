import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/balance_view.dart';
import 'package:mobile_payment_app/views/home_view.dart';
import 'package:mobile_payment_app/views/notifications_view.dart';
import 'package:mobile_payment_app/views/offer_view.dart';
import 'package:mobile_payment_app/views/profile_view.dart';
import 'package:mobile_payment_app/views/recieve_view.dart';
import 'package:mobile_payment_app/views/rewards.dart';

class tab_view extends StatefulWidget {
  const tab_view({super.key});

  @override
  State<tab_view> createState() => _tab_viewState();
}

class _tab_viewState extends State<tab_view> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: selectcolor().headercolor,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile_view(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: selectcolor().headercolor,
                child: CircleAvatar(
                    // radius: 60,
                    backgroundImage:
                        AssetImage("assets/images/profile_pic.png")),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Container(
              width: 280,
              height: 45,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: selectcolor().btn_grey_color,
                    hintText: "   Search User, ID's etc",
                    hintStyle: TextStyle(
                      color: selectcolor().grey_text_color,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    focusColor: Colors.transparent,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.transparent)),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Positioned(
                        // bottom:
                        // top:
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: selectcolor().grey_text_color,
                        ),
                      ),
                    )),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
              child: Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                    backgroundColor: selectcolor().btn_grey_color,
                    radius: 28,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => notifications_view(),
                            ));
                      },
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: selectcolor().themeColor,
                        size: 27,
                      ),
                    )),
              ),
            ),
          ],
          bottom: TabBar(
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: selectcolor().whiteColor,
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Balance",
                ),
                Tab(
                  text: "Offers",
                ),
                Tab(
                  text: "Reward",
                ),
              ]),
        ),
        body: TabBarView(children: [
          home_view(),
          balance_view(),
          offer_view(),
          rewards_view(),
        ]),
      ),
    );
  }
}
