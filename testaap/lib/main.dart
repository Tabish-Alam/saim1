import 'package:flutter/material.dart';

void main() {
  runApp(Text(
    "Hello Flutter User.lorem100ZXZczczddxcgcnvmnm,,,n./'ll;jkjhjhgjhgfcfcfdfgxdzszsasdfasdasdaaaqqwewewaqwqaeeerrrereretrtrtytyrtyutyututuiyopiupoi[ppp",
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
    style: TextStyle(
        // color: Colors.green,
        fontSize: 50,
        // fontWeight: FontWeight.w700,
        foreground: Paint()
          ..color = Colors.blue
          ..strokeWidth = 3.5
          ..style = PaintingStyle.stroke),
    // overflow: TextOverflow.ellipsis,
    // textScaleFactor: 2,
    // softWrap: true,
    // maxLines: 10,
    semanticsLabel: "This is Lorem Text",
  ));
}
