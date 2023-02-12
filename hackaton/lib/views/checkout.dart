import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackaton/Custom%20Widget/customwidget.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/order_done.dart';

class checkout_view extends StatefulWidget {
  const checkout_view({super.key});

  @override
  State<checkout_view> createState() => _checkout_viewState();
}

class _checkout_viewState extends State<checkout_view> {
  int value = 0;

  void add() {
    setState(() {
      value++;
    });
  }

  void subtract() {
    if (value > 0) {
      setState(() {
        value--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Selectcolor().white,
      appBar: AppBar(
          backgroundColor: Selectcolor().transparent,
          elevation: 0.0,
          title: appbar_widget()),
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "Your Bag",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Selectcolor().text_green_order_color),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          // cart items widget start

          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 1,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return cart_items();
              },
            ),
          ),

          // cart items widget end

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundColor: Selectcolor().green_bg,
                child: Icon(
                  select_icons().icon_track_order,
                  color: Selectcolor().text_green_order_color,
                  size: 30,
                )),
            title: Row(
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      // fontWeight: FontWeight.bold,
                      color: Selectcolor().black),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.02,
                  width: MediaQuery.of(context).size.height * 0.1,
                  child: LinearProgressIndicator(
                    backgroundColor: Selectcolor().green_bg,
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation(
                        Selectcolor().text_green_order_color),
                  ),
                ),
              ],
            ),
            subtitle: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Order above ₹1200 to get\nfree delivery ",
                  style: TextStyle(
                      color: Selectcolor().black,
                      fontSize: MediaQuery.of(context).size.height * 0.015)),
              TextSpan(
                  text: "Shop for more ₹190",
                  style: TextStyle(
                      color: Selectcolor().text_green_order_color,
                      fontSize: MediaQuery.of(context).size.height * 0.015))
            ])),
            trailing: Text(
              "\$80",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  // fontWeight: FontWeight.bold,
                  color: Selectcolor().black),
            ),
          ),

          // delivery listile end
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          // apply coupon
          ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundColor: Selectcolor().green_bg,
                child: Icon(
                  select_icons().icon_percent_badge,
                  color: Selectcolor().text_green_order_color,
                  size: 30,
                )),
            title: Text(
              "Apply Coupon",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  // fontWeight: FontWeight.bold,
                  color: Selectcolor().black),
            ),
            trailing: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.4,
              child: TextFormField(
                decoration: InputDecoration(

                    // filled: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Selectcolor().text_green_order_color,
                            width: 2)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Selectcolor().text_green_order_color,
                            width: 2)),
                    hintText: "Enter your Email",
                    hintStyle: TextStyle(color: Selectcolor().grey_text_color)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Selectcolor().text_blue_order_color),
                ),
                Text(
                  "\$1090",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                      color: Selectcolor().text_blue_order_color),
                ),
              ],
            ),
          )
        ],
      ),

      // bottomNavigationBar start

      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => order_done_view(),
                  maintainState: true));
        },
        child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                color: Selectcolor().text_green_order_color,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Checkout",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            // fontWeight: FontWeight.bold,
                            color: Selectcolor().white),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$1090",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Selectcolor().white),
                ),
              ],
            )),
      ),
      // bottomNavigationBar end
    );
  }

  Widget cart_items() => Column(
        children: [
          ListTile(
            leading: Image.asset("assets/main_logo.png"),
            title: Text(
              "Watermelon Peperomia",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  fontWeight: FontWeight.w600,
                  color: Selectcolor().black),
            ),
            subtitle: Row(
              children: [
                InkWell(
                  onTap: () {
                    add();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.06,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Selectcolor().black, width: 1),
                        borderRadius: BorderRadius.circular(5)),

                    child: Icon(
                      select_icons().icon_plus,
                      size: MediaQuery.of(context).size.height * 0.02,
                      color: Selectcolor().black,
                    ),
                    // child: Text("-", style: TextStyle(fontSize: 30)),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),

                Text(
                  value.toString(),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      // fontWeight: FontWeight.bold,
                      color: Selectcolor().text_green_order_color),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),

                InkWell(
                  onTap: () {
                    subtract();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.06,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Selectcolor().black, width: 1),
                        borderRadius: BorderRadius.circular(5)),

                    child: Icon(
                      select_icons().icon_minus,
                      size: MediaQuery.of(context).size.height * 0.02,
                      color: Selectcolor().black,
                    ),
                    // child: Text("-", style: TextStyle(fontSize: 30)),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),

                // minus btn

                // delete btn
                Center(
                  child: Icon(
                    select_icons().icon_delete,
                    size: 25,
                    color: Selectcolor().text_green_order_color,
                  ),
                )
                // delete btn
              ],
            ),
            trailing: Wrap(
              children: [
                Icon(
                  select_icons().icon_bookmark,
                  color: Selectcolor().text_green_order_color,
                  size: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Text(
                  "₹350",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      // fontWeight: FontWeight.bold,
                      color: Selectcolor().black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      );

  // delivery listtile;
}
