import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class filter_view extends StatefulWidget {
  const filter_view({super.key});

  @override
  State<filter_view> createState() => _filter_viewState();
}

List productColor = <Color>[
  selectcolor().themecolor,
  selectcolor().product_color1,
  selectcolor().product_color2,
  selectcolor().product_color3,
  selectcolor().product_color4,
  selectcolor().product_color5,
  selectcolor().product_color6,
];

Color primaryColor = productColor[0];
bool selected = false;

class _filter_viewState extends State<filter_view> {
  // to change color on select

  RangeValues price = RangeValues(0, 100);

  //  bool selected = false;

  // static get index => productlist[index];
  @override
  Widget build(BuildContext context) {
    var price_range_min = price.start;
    var price_range_max = price.end;
    RangeLabels labels =
        RangeLabels(price_range_min.toString(), price_range_max.toString());
    return Scaffold(
      backgroundColor: selectcolor().white,
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
          children: [
            spacer(spacer_height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Gender",
                style: TextStyle(
                    color: selectcolor().black,
                    fontSize: 20,
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w600),
              ),
            ),
            spacer(spacer_height: 10),
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                filter_gender_btn(
                    btn_height: 50,
                    btn_width: 100,
                    btn_text: "Men",
                    btn_color: selected == true
                        ? primaryColor
                        : selectcolor().products_bg_color,
                    on_click: () {
                      if (selected == true) {
                        selected = false;
                      } else {
                        selected = true;
                      }
                      setState(() {
                        primaryColor;
                      });
                    }),
                spacer(spacer_width: 10),
                filter_gender_btn(
                  btn_height: 50,
                  btn_width: 100,
                  btn_text: "Women",
                  btn_color: selected == true
                      ? primaryColor
                      : selectcolor().products_bg_color,
                ),
                spacer(spacer_width: 10),
                filter_gender_btn(
                    btn_height: 50,
                    btn_width: 100,
                    btn_text: "Both",
                    btn_color: selected == true
                        ? primaryColor
                        : selectcolor().products_bg_color,
                    on_click: () {
                      setState(() {
                        primaryColor;
                      });
                    })
              ],
            ),
            spacer(spacer_height: 20),
            divide(color: selectcolor().grey_color),
            spacer(spacer_height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Price Rate",
                style: TextStyle(
                    color: selectcolor().black,
                    fontSize: 20,
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w600),
              ),
            ),
            Column(
              children: [
                RangeSlider(
                  onChangeEnd: (value) {},
                  values: price,
                  activeColor: primaryColor,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  onChanged: (value) {
                    price = value;
                    setState(() {});
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: selectcolor().products_bg_color,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "${price_range_min}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "DM Sans",
                                    fontSize: 20,
                                    color: selectcolor().black),
                                // fillColor: selectcolor().products_bg_color,
                                // filled: true,
                              ),
                              spacer(spacer_width: 10),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: selectcolor().black,
                              ),
                            ]),
                      ),
                      onTap: () {},
                    ),
                    spacer(spacer_width: 10),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: selectcolor().products_bg_color,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "${price_range_max}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "DM Sans",
                                    fontSize: 20,
                                    color: selectcolor().black),
                                // fillColor: selectcolor().products_bg_color,
                                // filled: true,
                              ),
                              spacer(spacer_width: 10),
                              Icon(
                                Icons.arrow_drop_up,
                                size: 20,
                                color: selectcolor().black,
                              ),
                            ]),
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),

            // spacer(spacer_height: 10),
            spacer(spacer_height: 20),
            divide(color: selectcolor().grey_color),
            spacer(spacer_height: 20),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Color",
                style: TextStyle(
                    color: selectcolor().black,
                    fontSize: 20,
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.w600),
              ),
            ),
            spacer(spacer_height: 20),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productColor.length,
                itemBuilder: (context, index) {
                  return color_box(
                      box_height: 50,
                      box_width: 50,
                      box_color: productColor[index]);
                },
              ),
            ),

            // Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [color_box_loop()]),
            spacer(spacer_height: 20),
            divide(color: selectcolor().grey_color),
            spacer(spacer_height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  width: 220,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "APPLY FILTERS",
                          style: TextStyle(
                            color: selectcolor().white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                spacer(spacer_width: 20),
                Container(
                  decoration: BoxDecoration(
                      color: selectcolor().products_bg_color,
                      borderRadius: BorderRadius.circular(8)),
                  height: 50,
                  width: 100,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RESET",
                          style: TextStyle(
                            color: selectcolor().white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// colorbox loop
  Widget color_box_loop() => Row(children: [
        for (var i = 0; i < 7; i++)
          filter_gender_btn(
              btn_height: 50,
              btn_width: 100,
              btn_text: "Men",
              btn_color: selected == true
                  ? primaryColor
                  : selectcolor().products_bg_color,
              on_click: () {
                setState(() {
                  primaryColor;
                });
              })
      ]);

  Widget color_box({box_height, box_width, box_color}) => Container(
        child: InkWell(
          onTap: () {
            setState(() {
              primaryColor = box_color;
            });
          },
          child: Stack(children: [
            // box

            Container(
              height: box_height,
              width: box_width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: box_color),
            ),

            Container(
              height: box_height,
              width: box_width,
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                size: 25,
                color: primaryColor == box_color
                    ? Colors.black
                    : Colors.transparent,
              ),
            ),
            spacer(spacer_width: 60),
          ]),
        ),
      );

// gender filter button
  Widget filter_gender_btn({
    VoidCallback? on_click,
    btn_height,
    btn_width,
    btn_text,
    btn_color,
  }) =>
      InkWell(
        onTap: () {
          on_click!();
        },
        child: Container(
          height: btn_height,
          width: btn_width,
          decoration: BoxDecoration(
              color: btn_color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              btn_text,
              style: TextStyle(
                  color: selectcolor().black,
                  fontSize: 15,
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );
}
