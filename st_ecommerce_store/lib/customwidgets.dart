import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:st_ecommerce_store/properties.dart';
import 'package:st_ecommerce_store/views/filter.dart';

class icon_btn_widget_class extends StatelessWidget {
  final height;
  final Width;
  final bg_color;
  final icon;
  final icon_size;
  final icon_color;
  final border_radius;
  final img;
  final bool img_widget;
  final bool img_with_text;

  final img_title_text;
  final img_title_text_size;
  final img_title_text_color;
  final String img_desc_text;
  final img_desc_text_size;
  final img_desc_text_color;
  final img_height;
  final img_width;

  const icon_btn_widget_class({
    super.key,
    this.height,
    this.Width,
    this.bg_color,
    this.icon,
    this.icon_size,
    this.icon_color,
    this.border_radius,
    this.img,
    this.img_widget = false,
    this.img_title_text = "",
    this.img_title_text_size,
    this.img_title_text_color,
    this.img_desc_text = "",
    this.img_desc_text_size,
    this.img_desc_text_color,
    this.img_height,
    this.img_width,
    this.img_with_text = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border_radius),
            color: bg_color),
        height: height,
        width: Width,
        alignment: Alignment.center,
        child: img_widget == true
            ? img_with_text == true
                ? Column(
                    children: [
                      Image(
                        image: AssetImage(img),
                        height: img_height,
                        width: img_width,
                        fit: BoxFit.contain,
                      ),
                      // spacer(height: 10),
                      Text(
                        img_title_text,
                        style: TextStyle(
                            fontSize: img_title_text_size,
                            fontWeight: FontWeight.w700,
                            color: img_title_text_color),
                      ),
                      spacer(spacer_height: 10),
                      Text(
                        img_desc_text,
                        style: TextStyle(
                          fontSize: img_desc_text_size,
                          color: img_desc_text_color,
                        ),
                      )
                    ],
                  )
                : Image(
                    image: AssetImage(img),
                    height: img_height,
                    width: img_width,
                    fit: BoxFit.contain,
                  )
            : Icon(
                icon,
                size: icon_size,
                color: icon_color,
              ));
  }
}

spacer({final spacer_height, final spacer_width}) {
  return SizedBox(
    height: spacer_height,
    width: spacer_width,
  );
}

class order_btn_prefix_widget_class extends StatelessWidget {
  final height;
  final width;
  final bg_color;
  final icon;
  final icon_size;
  final icon_color;
  final border_radius;
  final bool prefix;

  final text;
  final text_size;
  final text_color;
  const order_btn_prefix_widget_class(
      {super.key,
      this.height,
      this.width,
      this.bg_color,
      this.icon,
      this.icon_size,
      this.icon_color,
      this.border_radius,
      this.prefix = false,
      this.text,
      this.text_size,
      this.text_color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bg_color, borderRadius: BorderRadius.circular(border_radius)),
      height: height,
      width: width,
      child: prefix == true
          ? Container(
              child: Row(
                children: [
                  spacer(spacer_width: 20),
                  Icon(
                    icon,
                    color: icon_color,
                    size: icon_size,
                  ),
                  spacer(spacer_width: 40),
                  Text(
                    text,
                    style: TextStyle(
                      color: text_color,
                      fontSize: text_size,
                    ),
                  )
                ],
              ),
            )
          : Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: text_color,
                      fontSize: text_size,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class order_btn_suffix_widget_class extends StatelessWidget {
  final height;
  final width;
  final bg_color;
  final icon;
  final icon_size;
  final icon_color;
  final border_radius;
  final bool suffix;
  final VoidCallback? on_press;

  final text;
  final text_size;
  final text_color;
  const order_btn_suffix_widget_class(
      {super.key,
      this.height,
      this.width,
      this.bg_color,
      this.icon,
      this.icon_size,
      this.icon_color,
      this.border_radius,
      this.suffix = false,
      this.text,
      this.text_size,
      this.text_color,
      this.on_press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        on_press!();
      },
      child: Container(
        decoration: BoxDecoration(
            color: bg_color,
            borderRadius: BorderRadius.circular(border_radius)),
        height: height,
        width: width,
        child: suffix == true
            ? Container(
                // alignment: Alignment.centerRight,
                // width: MediaQuery.of(context).size.width*0.8,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // spacer(spacer_width: 100)
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: TextStyle(
                          color: text_color,
                          fontSize: text_size,
                        ),
                      ),
                    ),
                    // spacer(spacer_width: 60),
                    Container(
                      // width: MediaQuery.of(context).size.width*0.3,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        icon,
                        color: icon_color,
                        size: icon_size,
                      ),
                    ),
                    spacer(spacer_width: 5)
                  ],
                ),
              )
            : Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: text_color,
                        fontSize: text_size,
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

rating_box({box_color}) {
  return Column(
    children: [
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: box_color, borderRadius: BorderRadius.circular(3)),
      ),
      spacer(spacer_width: 20),
    ],
  );
}

divide({color}) {
  return Divider(
    color: color,
    height: 1,
    thickness: 1,
  );
}

// class filter_gender_btn extends StatelessWidget {
//   final btn_height;
//   final btn_width;
//   final btn_text;
//   final btn_color;
//   final bool? selected;
//   final VoidCallback? on_click;
//   const filter_gender_btn(
//       {super.key,
//       this.btn_height,
//       this.btn_width,
//       this.btn_text,
//       this.btn_color,
//       this.on_click,
//       this.selected = false});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         on_click!();
//         selected != true;
//       },
//       child: Container(
//         height: btn_height,
//         width: btn_width,
//         decoration: BoxDecoration(
//             color: btn_color, borderRadius: BorderRadius.circular(10)),
//         child: Center(
//           child: Text(
//             btn_text,
//             style: TextStyle(
//                 color: selectcolor().black,
//                 fontSize: 15,
//                 fontFamily: "DM Sans",
//                 fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     );
//   }
// }

class product_color_widget extends StatelessWidget {
  final box_height;
  final box_width;
  final box_color;
  final VoidCallback? on_pressed;
  const product_color_widget(
      {super.key,
      this.box_height,
      this.box_width,
      this.box_color,
      this.on_pressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        // box

        InkWell(
          onTap: () {
            on_pressed!();
          },
          child: Container(
            height: box_height,
            width: box_width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: box_color),
          ),
        ),
        Container(
          height: box_height,
          width: box_width,
          alignment: Alignment.center,
          child: Icon(
            Icons.check,
            size: 25,
            color:
                primaryColor == box_color ? Colors.black : Colors.transparent,
          ),
        ),
        spacer(spacer_width: 60),
      ]),
    );
  }
}
