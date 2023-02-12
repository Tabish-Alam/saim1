import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackaton/Custom%20Widget/customwidget.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';

class drawer_view extends StatefulWidget {
  const drawer_view({super.key});

  @override
  State<drawer_view> createState() => _drawer_viewState();
}

class _drawer_viewState extends State<drawer_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Selectcolor().text_green_order_color,
      appBar: AppBar(
        backgroundColor: Selectcolor().transparent,
        elevation: 0.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.05,
            // ),
            Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  drawer_text_icon_widget(
                    container_width: MediaQuery.of(context).size.width * 0.7,
                    container_height: MediaQuery.of(context).size.height * 0.08,
                    btn_icon: select_icons().icon_shop,
                    icon_size: MediaQuery.of(context).size.height * 0.035,
                    btn_text: "Shop",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  drawer_text_icon_widget(
                    container_width: MediaQuery.of(context).size.width * 0.7,
                    container_height: MediaQuery.of(context).size.height * 0.08,
                    btn_icon: select_icons().icon_planet_care,
                    icon_size: MediaQuery.of(context).size.height * 0.035,
                    btn_text: "Plant Care",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  drawer_text_icon_widget(
                    container_width: MediaQuery.of(context).size.width * 0.7,
                    container_height: MediaQuery.of(context).size.height * 0.08,
                    btn_icon: select_icons().icon_community,
                    icon_size: MediaQuery.of(context).size.height * 0.035,
                    btn_text: "Community",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  drawer_text_icon_widget(
                    container_width: MediaQuery.of(context).size.width * 0.7,
                    container_height: MediaQuery.of(context).size.height * 0.08,
                    btn_icon: select_icons().icon_account,
                    icon_size: MediaQuery.of(context).size.height * 0.035,
                    btn_text: "My Account",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  drawer_text_icon_widget(
                    container_width: MediaQuery.of(context).size.width * 0.7,
                    container_height: MediaQuery.of(context).size.height * 0.08,
                    btn_icon: select_icons().icon_track_order,
                    icon_size: MediaQuery.of(context).size.height * 0.035,
                    btn_text: "Track Order",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      "Get the dirt.",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          color: Selectcolor().white),
                    ),
                  ),

                  // text box
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      decoration: InputDecoration(
                          // filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Selectcolor().white, width: 2)),
                          contentPadding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                          hintText: "Enter your Email",
                          hintStyle:
                              TextStyle(color: Selectcolor().grey_text_color)),
                    ),
                  ),
                  // text box end
                  drawer_text_widget(
                    btn_text: "FAQ",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                    container_height: MediaQuery.of(context).size.height * 0.05,
                    container_width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  drawer_text_widget(
                    btn_text: "About US",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                    container_height: MediaQuery.of(context).size.height * 0.05,
                    container_width: MediaQuery.of(context).size.width * 0.7,
                  ),
                  drawer_text_widget(
                    btn_text: "Contact Us",
                    text_size: MediaQuery.of(context).size.height * 0.03,
                    container_height: MediaQuery.of(context).size.height * 0.05,
                    container_width: MediaQuery.of(context).size.width * 0.7,
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
