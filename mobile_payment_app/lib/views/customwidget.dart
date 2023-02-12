import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_payment_app/properties.dart';
import 'package:mobile_payment_app/views/customwidget.dart';
import 'package:mobile_payment_app/views/profile_view.dart';
import 'package:mobile_payment_app/views/tab_view.dart';

balance_bank_box({box_color, bank_name, account_no, bank_amount}) {
  return Container(
    height: 90,
    width: 130,
    decoration: BoxDecoration(
        color: box_color, borderRadius: BorderRadius.circular(15)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          bank_name,
          style: TextStyle(
              color: selectcolor().whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        Text(
          account_no,
          style: TextStyle(
              color: selectcolor().themeColor,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        Text(
          bank_amount,
          style: TextStyle(
              color: selectcolor().whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
      ],
    ),
  );
}

btn_balance_reward({btn_name}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: selectcolor().btn_grey_color,
        fixedSize: Size(280, 40),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {},
      child: Text(
        btn_name,
        style: TextStyle(color: selectcolor().whiteColor, fontSize: 18),
      ));
}

text_heading({page_heading}) {
  return Text(
    page_heading,
    style: TextStyle(
        color: selectcolor().whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.w600),
  );
}

cash_text({amount, txt_color}) {
  return Text(
    amount,
    style:
        TextStyle(color: txt_color, fontWeight: FontWeight.w900, fontSize: 30),
  );
}

plain_grey_text({
  write_text,
  text_size = 18,
}) {
  return Text(
    write_text,
    style: TextStyle(
      color: selectcolor().themeColor,
      fontSize: text_size,
    ),
  );
}

notifications_white_text({write_text}) {
  return Text(
    write_text,
    style: TextStyle(
        color: selectcolor().whiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 20),
  );
}

scrachcards_reward() {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        color: selectcolor().scrachcard_color,
        borderRadius: BorderRadius.circular(20)),
  );
}

reward_page_widget(
    {title_text, subtitle_text, vector_bg_image, vector_image, bg_color}) {
  return Container(
    height: 115,
    width: 340,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15), color: bg_color),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Stack(
        children: [
          Image.asset(vector_bg_image),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 10,
              child: Image.asset(vector_image)),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2,
          ),
          Text(
            title_text,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: selectcolor().whiteColor),
          ),
          Text(
            subtitle_text,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: selectcolor().whiteColor),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: selectcolor().reward_widget_btn_color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {},
              child: Text(
                "Collect Now",
                style: TextStyle(
                    color: selectcolor().reward_widget_btn_text_color),
              )),
          SizedBox(
            height: 1,
          ),
        ],
      )
    ]),
  );
}

offer_page_widget(
    {title_text, subtitle_text, vector_bg_image, vector_image, bg_color}) {
  return Flexible(
    child: Container(
      height: 115,
      width: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: bg_color),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Stack(
          children: [
            Image.asset("images/bg_vector.png"),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 10,
                child: Image.asset(vector_image)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2,
            ),
            Text(
              title_text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: selectcolor().whiteColor),
            ),
            Text(
              subtitle_text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: selectcolor().whiteColor),
            ),
            SizedBox(
              height: 1,
            ),
          ],
        )
      ]),
    ),
  );
}

recieve_page_btn({hint_text, suffix_text, suiffix_icon}) {
  return TextField(
    obscureText: false,
    readOnly: true,
    // enabled: false,

    decoration: InputDecoration(
      // semanticCounterText: ,
      filled: true,
      fillColor: selectcolor().recieve_textfield_color,
      hintText: hint_text,
      hintStyle: TextStyle(
          color: selectcolor().whiteColor, fontWeight: FontWeight.bold),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent)),
      suffix: plain_grey_text(write_text: suffix_text),
      suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            suiffix_icon,
            color: selectcolor().themeColor,
          )),
    ),
  );
}

home_btn_widget({hint_text, suffix_text, suiffix_icon}) {
  return TextField(
    obscureText: false,
    readOnly: true,
    // enabled: false,

    decoration: InputDecoration(
      // semanticCounterText: ,
      filled: true,
      fillColor: selectcolor().recieve_textfield_color,
      hintText: hint_text,
      hintStyle: TextStyle(
          color: selectcolor().whiteColor, fontWeight: FontWeight.bold),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent)),
      suffix: plain_grey_text(write_text: suffix_text),
      suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            suiffix_icon,
            color: selectcolor().themeColor,
          )),
    ),
  );
}

login_text_widget() {
  return Container(
    height: 45,
    width: 330,
    child: TextField(
      keyboardType: TextInputType.phone,
      textAlign: TextAlign.justify,
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        filled: true,
        fillColor: selectcolor().whiteColor,
        prefix: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            "+92",
            style: TextStyle(
              color: selectcolor().login_btn_color,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        hintText: "Enter Mobile Number",
        hintStyle: TextStyle(
          color: selectcolor().themeColor,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    ),
  );
}

class login_btn_widget_class extends StatelessWidget {
  final VoidCallback? on_pressed_action;
  login_btn_widget_class({super.key, this.on_pressed_action});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 330,
      child: ElevatedButton(
        onPressed: () {
          on_pressed_action!();
        },
        child: Text(
          "Verify",
          style: TextStyle(
              color: selectcolor().whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: selectcolor().login_btn_color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
    );
  }
}

notifications_listile_widget({title_text, message, date}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        notifications_white_text(write_text: title_text),
        SizedBox(
          height: 5,
        ),
        plain_grey_text(write_text: message, text_size: 15),
      ],
    ),
    subtitle: plain_grey_text(write_text: date, text_size: 16),
    trailing: CircleAvatar(
        backgroundColor: selectcolor().btn_grey_color,
        radius: 25,
        child: Icon(
          Icons.notifications_outlined,
          color: selectcolor().themeColor,
          size: 40,
        )),
  );
}

class notifications_heading_widget_class extends StatelessWidget {
  final String page_heading;
  final IconData page_icon;
  final VoidCallback? on_pressed_action;
  notifications_heading_widget_class(
      {super.key,
      required this.page_heading,
      required this.page_icon,
      this.on_pressed_action});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text_heading(
            page_heading: page_heading,
          ),
          IconButton(
              onPressed: () {
                on_pressed_action!();
              },
              icon: Icon(
                page_icon,
                color: selectcolor().whiteColor,
              ))
        ],
      ),
    );
  }
}

profile_setting1_widget({title_text, title_icon}) {
  return Column(children: [
    SizedBox(
      height: 2.5,
    ),
    ListTile(
      leading: Icon(title_icon, color: selectcolor().whiteColor, size: 30),
      title: plain_grey_text(write_text: title_text, text_size: 20),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: selectcolor().whiteColor,
      ),
    ),
    SizedBox(
      height: 2.5,
    ),
  ]);
}

profile_detail_widget({field_name, number}) {
  return Column(
    children: [
      cash_text(amount: number, txt_color: selectcolor().login_btn_color),
      plain_grey_text(write_text: field_name, text_size: 15)
    ],
  );
}

class profile_btn_widget_class {
  profile_btn_widget({btn_name, btn_icon, on_pressed_action}) {
    return Container(
      height: 35,
      // width: 105,
      child: ElevatedButton.icon(
        onPressed: () {
          on_pressed_action;
        },
        label: Icon(btn_icon),
        icon: Text(btn_name),
        style: ElevatedButton.styleFrom(
            primary: selectcolor().btn_grey_color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}

profile_page_verticaldivider_page({divider_width = 10}) {
  return VerticalDivider(
    color: Colors.white,
    thickness: 100,
    width: divider_width,
    // indent: 20,
    // endIndent: 20,
  );
}

home_ticket_btn_widget({btn_name, btn_icon}) {
  return Column(children: [
    ConstrainedBox(
      constraints: const BoxConstraints.tightFor(height: 55, width: 60),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: selectcolor().home_ticket_btn_color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Icon(
            btn_icon,
            color: selectcolor().reward_widget_btn_text_color,
            size: 30,
          )),
    ),
    plain_grey_text(text_size: 12, write_text: btn_name),
  ]);
}

home_recent_transactions_widget({img}) {
  return CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage(img),
  );
}

spacer({width = 0, height = 0}) {
  return SizedBox(
    width: width,
    height: height,
  );
}

home_transaction_btn({btn_color, select_icon, write_text}) {
  return SizedBox(
    height: 50,
    width: 170,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: btn_color),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Icon(select_icon)),
            Container(
              height: 50,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Text(write_text),
            )
          ],
        ),
      ),
    ),
  );
}

home_money_btn_widget({btn_icon, btn_text, btn_color}) {
  return Container(
    width: 160,
    height: 40,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(btn_icon),
      label: Text(btn_text),
      style: ElevatedButton.styleFrom(
          primary: btn_color,
          onPrimary: selectcolor().whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    ),
  );
}

home_more_btn_widget() {
  return Container(
    width: 80,
    height: 30,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Text("More"),
      label: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 15,
      ),
      style: ElevatedButton.styleFrom(
          primary: selectcolor().btn_grey_color,
          onPrimary: selectcolor().whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    ),
  );
}
