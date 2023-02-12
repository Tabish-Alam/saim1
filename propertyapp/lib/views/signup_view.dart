import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:propertyapp/customwidgets.dart';
import 'package:propertyapp/properties.dart';

class signup_view extends StatefulWidget {
  const signup_view({super.key});

  @override
  State<signup_view> createState() => _signup_viewState();
}

class _signup_viewState extends State<signup_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Fill Your Profile",
            style: TextStyle(
                color: selectcolor().blacktextcolor,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: selectcolor().transparent,
          elevation: 0.0,
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                child: const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHKo8dHl8dBZJslTnz8kE0q2STi1y7hHtpVw&usqp=CAU"),
                    radius: 70,
                  ),
                ),
              ),
              customtextfield(placeholder: "Full Name"),
              SizedBox(
                height: 20,
              ),
              customtextfield(placeholder: "Nick Name"),
              SizedBox(
                height: 20,
              ),
              custompassword(
                  placeholder: "Date of birth",
                  sufix_icon: Icons.calendar_month_outlined,
                  hide_text: false),
              SizedBox(
                height: 20,
              ),
              custompassword(
                placeholder: "Email",
                sufix_icon: Icons.mail_outline,
              ),
              SizedBox(
                height: 20,
              ),
              custompassword(
                  placeholder: "Gender", sufix_icon: Icons.person_outline),
              SizedBox(
                height: 20,
              ),
              login_button(
                btn_name: "Continue",
              ),
            ]));
  }
}
