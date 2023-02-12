import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/drawer.dart';
import 'package:hackaton/views/home.dart';
import 'package:hackaton/views/product_description.dart';

drawer_text_icon_widget(
    {container_height,
    container_width,
    icon_size,
    btn_icon,
    btn_text,
    text_size}) {
  return Container(
    height: container_height,
    width: container_width,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          btn_icon,
          size: icon_size,
          color: Selectcolor().white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          btn_text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: text_size,
              color: Selectcolor().white),
        ),
      ],
    ),
  );
}

drawer_text_widget({container_height, container_width, text_size, btn_text}) {
  return Container(
    alignment: Alignment.center,
    height: container_height,
    width: container_width,
    child: Text(
      btn_text,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: text_size,
          color: Selectcolor().white),
    ),
  );
}

product_description_overview_widget(
    {widget_height,
    widget_width,
    icon_width,
    icon,
    icon_size,
    title_size,
    title_text,
    subtitle_size,
    subtitle_text}) {
  return Container(
    height: widget_height,
    width: widget_width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon,
            color: Selectcolor().product_description_icon_yellow,
            size: icon_size),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text(
              title_text,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: title_size,
                  fontWeight: FontWeight.bold,
                  color: Selectcolor().text_green_order_color),
            ),
            Text(
              subtitle_text,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: subtitle_size,
                  fontWeight: FontWeight.bold,
                  color: Selectcolor().product_description_grey_text),
            ),
          ],
        )
      ],
    ),
  );
}

class appbar_widget extends StatelessWidget {
  appbar_widget({super.key});

  VoidCallback? search_btn;
  VoidCallback? menu_btn;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/main_logo.png"),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Image.asset("assets/main_logo_text.png"),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.05,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.42,
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                select_icons().icon_search,
                color: Selectcolor().black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => drawer_view(),
                          maintainState: true));
                },
                child: Icon(
                  select_icons().icon_menu,
                  color: Selectcolor().black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
