import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/properties.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  final email = TextEditingController();
  final password = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool show_password = false;
  show_password_check() {
    if (show_password == false) {
      show_password = true;
    } else {
      show_password = false;
    }
    print(show_password);
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            // upper text

            spacer(spacer_height: 10),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: MediaQuery.of(context).size.height * 0.035,
                    color: selectcolor().black,
                  ),
                  spacer(spacer_width: 10),
                  Text(
                    "Perth, Western Australia",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700,
                      color: selectcolor().black,
                    ),
                  ),
                ],
              ),
            ),
            spacer(
              spacer_height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let’s Sign You In",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.035,
                        fontWeight: FontWeight.w700,
                        color: selectcolor().black,
                      ),
                    ),
                    spacer(
                      spacer_height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    Container(
                      child: Text(
                        "Welcome back, you’ve been missed!",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: selectcolor().black,
                        ),
                      ),
                    ),
                  ]),
            ),
            spacer(
              spacer_height: MediaQuery.of(context).size.height * 0.1,
            ),
            // upper text

            // text fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.87,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Username or Email",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.w400,
                        color: selectcolor().grey_text_color,
                      ),
                    ),
                  ),
                  spacer(
                    spacer_height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextFormField(
                            // textAlignVertical: TextAlignVertical.center,
                            mouseCursor: MouseCursor.defer,
                            controller: email,
                            keyboardType: TextInputType.emailAddress,

                            decoration: InputDecoration(
                                isDense: true,
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.025,
                                  fontWeight: FontWeight.w600,
                                  color: selectcolor().grey_text_color,
                                ),
                                prefix: Container(
                                    // height: 10,
                                    width: 40,
                                    child: Icon(
                                      Icons.person_outlined,
                                      size: MediaQuery.of(context).size.height *
                                          0.035,
                                    )),
                                suffix: (RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(email.text)
                                    ? Container(
                                        height: 10,
                                        width: 40,
                                        child: Icon(
                                          Icons.done,
                                          color: selectcolor().green_icon_color,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                        ))
                                    : null)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter email';
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value!)) {
                                return 'Invalid email address';
                              }
                              return null;
                            },
                          ),
                        ),
                        spacer(
                          spacer_height:
                              MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.87,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w400,
                              color: selectcolor().grey_text_color,
                            ),
                          ),
                        ),
                        spacer(
                          spacer_height:
                              MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          child: TextFormField(
                            obscureText: show_password == true ? false : true,
                            controller: password,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: selectcolor().grey_text_color,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.025,
                                  fontWeight: FontWeight.w600),
                              prefix: Container(
                                  // height: 5,
                                  width: 40,
                                  child: Icon(
                                    Icons.lock_outline_sharp,
                                    size: MediaQuery.of(context).size.height *
                                        0.035,
                                  )),
                              suffix: InkWell(
                                onTap: () {
                                  show_password_check();
                                },
                                child: show_password == true
                                    ? Container(
                                        // height: 5,
                                        // width: 40,
                                        child: Icon(
                                        Icons.abc,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                      ))
                                    : Container(
                                        // height: 5,
                                        // width: 40,
                                        child: Icon(
                                        Icons.remove_red_eye_outlined,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                      )),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Password';
                              } else if (value.length < 6) {
                                return "Password must be atleast 6 digits";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // text fields

            // bottom buttons
            Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                MediaQuery.of(context).size.height * 0.15,
                0,
                MediaQuery.of(context).size.height * 0.05,
              ),
              child: Column(
                children: [
                  Container(
                    child: order_btn_suffix_widget_class(
                      bg_color: selectcolor().themecolor,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      border_radius: 5,
                      text: "SIGN IN",
                      text_color: selectcolor().white,
                      text_size: MediaQuery.of(context).size.height * 0.02,
                      icon: Icons.navigate_next,
                      icon_color: selectcolor().white,
                      icon_size: MediaQuery.of(context).size.height * 0.04,
                      suffix: true,
                      on_press: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                    ),
                  ),
                  spacer(
                    spacer_height: MediaQuery.of(context).size.height * 0.015,
                  ),

                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: selectcolor().grey_text_color,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                        TextSpan(text: "Don't have an account?"),
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                              color: selectcolor().black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w700),
                        ),
                      ])),
                  spacer(
                    spacer_height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  divide(color: selectcolor().grey_color),
                  spacer(
                    spacer_height: MediaQuery.of(context).size.height * 0.03,
                  ),

                  // facebook signin button
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: order_btn_prefix_widget_class(
                      bg_color: selectcolor().fb_btn_color,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      border_radius: MediaQuery.of(context).size.height * 0.01,
                      text: "Connect with Facebook",
                      text_color: selectcolor().white,
                      text_size: MediaQuery.of(context).size.height * 0.02,
                      icon: Icons.facebook,
                      icon_color: selectcolor().white,
                      icon_size: MediaQuery.of(context).size.height * 0.05,
                      prefix: true,
                    ),
                  ),
                ],
              ),
            )
            // bottom buttons
          ],
        ),
      ),
    );
  }
}
