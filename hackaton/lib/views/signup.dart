import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/utils/icons.dart';
import 'package:hackaton/views/login.dart';

class signup_view extends StatefulWidget {
  const signup_view({super.key});

  @override
  State<signup_view> createState() => _signup_viewState();
}

class _signup_viewState extends State<signup_view> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  btn_action() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => login_view(),
        ));
  }

  // firebase auth start
  signup_code() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      btn_action();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // firebase auth end
  FocusNode _focusNode = FocusNode();
  Color? color;
  @override
  Widget build(BuildContext context) {
    _focusNode.addListener(() {
      setState(() {
        color = _focusNode.hasFocus
            ? Selectcolor().black
            : Selectcolor().grey_text_color;
      });
    });
    return Scaffold(
      backgroundColor: Selectcolor().white,
      appBar: AppBar(
          backgroundColor: Selectcolor().transparent,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: IconButton(
              icon: Icon(
                select_icons().icon_back_circle,
                size: 40,
                color: Selectcolor().black,
              ),
              onPressed: () {},
            ),
          )),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(children: [
                Image.asset("assets/main_logo.png"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Image.asset("assets/main_logo_text.png"),
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Signup",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Philosopher",
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    // fontWeight: FontWeight.w600,
                    color: Selectcolor().text_green_order_color),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Masukan No. Handphone Anda dan tunggu kode autentik dikirimkan",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Philosopher",
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    // fontWeight: FontWeight.w600,
                    color: Selectcolor().text_green_order_color),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    controller: email,
                    focusNode: _focusNode,
                    autofocus: false,
                    decoration: InputDecoration(
                        label: Text("Username/ Email"),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: _focusNode.hasFocus
                              ? Selectcolor().black
                              : Selectcolor().grey_text_color,
                        ),
                        filled: false,
                        fillColor: Selectcolor().grey_text_color,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Selectcolor().grey_text_color,
                                width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Selectcolor().grey_text_color,
                                width: 2)),
                        // contentPadding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                        prefix: Icon(select_icons().icon_password),
                        hintText: "Masukkan Password",
                        hintStyle:
                            TextStyle(color: Selectcolor().grey_text_color)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    controller: password,
                    focusNode: _focusNode,
                    obscureText: true,
                    autofocus: false,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: _focusNode.hasFocus
                            ? Selectcolor().black
                            : Selectcolor().grey_text_color,
                      ),
                      filled: false,
                      fillColor: Selectcolor().grey_text_color,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Selectcolor().grey_text_color, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              color: Selectcolor().grey_text_color, width: 2)),
                      // contentPadding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                      prefix: Icon(select_icons().icon_password),
                      hintText: "Masukkan Password",
                      hintStyle:
                          TextStyle(color: Selectcolor().grey_text_color),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
              ],
            ),

            // bottom btn

            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                  onPressed: () {
                    signup_code();
                  },
                  child: Container(
                    child: Text(
                      "KIRIM",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          color: Selectcolor().white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Selectcolor().text_green_order_color,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            )

            // btootm btn
          ],
        ),
      ),
    );
  }
}
