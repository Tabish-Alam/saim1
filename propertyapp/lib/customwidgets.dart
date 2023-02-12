import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:propertyapp/properties.dart';

customtextfield({selecticon, placeholder}) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          hintText: placeholder,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: selectcolor().focuscolor),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: selectcolor().errorcolor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: selectcolor().errorcolor)),
          hoverColor: selectcolor().hovercolor,
          prefix: Icon(selecticon),
        ),
      ));
}

custompassword({placeholder, hide_text = false, prefix_icon, sufix_icon}) {
  return TextField(
      cursorHeight: 30,
      obscureText: hide_text,
      decoration: InputDecoration(
        hintText: placeholder,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: selectcolor().focuscolor),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: selectcolor().errorcolor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: selectcolor().errorcolor)),
        hoverColor: selectcolor().hovercolor,
        prefix: Icon(prefix_icon),
        suffix: Icon(sufix_icon),
      ));
}

login_button({required btn_name}) {
  return ElevatedButton(
      onPressed: () {
        print("Successful");
      },
      child: Text(btn_name),
      style: ElevatedButton.styleFrom(
          backgroundColor: selectcolor().primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))));
  ;
}

image_button({img_path}) {
  return ElevatedButton(
    onPressed: () {},
    child: Image(
      image: AssetImage(img_path),
      height: 25,
      width: 25,
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}

image_text_button({img_path, img_text_btn}) {
  return ElevatedButton(
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(img_path),
          height: 25,
          width: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          img_text_btn,
          style: TextStyle(color: Colors.black),
        ),
      ],
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
}

rich_text() {
  return RichText(
    text: TextSpan(
        style: TextStyle(color: selectcolor().greytextcolor),
        text: "Don't have an Account?",
        children: <TextSpan>[
          TextSpan(
              style: TextStyle(color: selectcolor().bluetextcolor),
              text: "Sign up")
        ]),
  );
}

app_text({add_text, text_color}) {
  return Text(
    add_text,
    style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        color: text_color,
        fontFamily: "Mulish"),
  );
}

detail_page_btn({detail_btn_icon}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
    child: ElevatedButton(
      onPressed: () {},
      child: Icon(
        detail_btn_icon,
        // size: 20,
        color: Colors.black,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: selectcolor().detail_btn_color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ),
  );
}

simple_text({add_text}) {
  return Text(
    add_text,
    style: TextStyle(color: selectcolor().greytextcolor),
  );
}

icon_text_widget({details_icon, add_text}) {
  return Row(
    children: [
      Icon(
        details_icon,
        color: selectcolor().yellowicon_color,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        add_text,
        style: TextStyle(color: selectcolor().greytextcolor),
      )
    ],
  );
}
