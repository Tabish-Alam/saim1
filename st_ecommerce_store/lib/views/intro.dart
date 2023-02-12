import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class onboard_view extends StatefulWidget {
  const onboard_view({super.key});

  @override
  State<onboard_view> createState() => _onboard_viewState();
}

class _onboard_viewState extends State<onboard_view> {
  PageController _introcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 1,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    height: MediaQuery.of(context).size.height * 0.5,

                    // width: double.infinity,
                    child: Image.asset("assets/images/Oval (2).png",
                        width: MediaQuery.of(context).size.width * 0.5,
                        fit: BoxFit.fitWidth),
                  ),

                  Container(
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width * 1,
                      child: PageView.builder(
                        // scrollDirection: Axis.horizontal,
                        itemCount: productlist.length,
                        itemBuilder: ((context, index) => Container(
                              child: Column(
                                children: [
                                  Image.asset(productlist[index].product_img,
                                      width: 350,
                                      height: 320,
                                      fit: BoxFit.contain),
                                  SmoothPageIndicator(
                                    controller: _introcontroller,
                                    count: productlist.length,
                                    effect: ExpandingDotsEffect(
                                        dotColor: selectcolor().grey_color,
                                        dotHeight: 8,
                                        dotWidth: 15,
                                        activeDotColor:
                                            selectcolor().themecolor),
                                  ),
                                ],
                              ),
                            )),
                      )),

                  // img2

                  Container(
                    alignment: Alignment.bottomLeft,
                    height: MediaQuery.of(context).size.height * 0.6,
                    // width: double.infinity,
                    child: Image.asset("assets/images/Oval (1).png",
                        width: MediaQuery.of(context).size.width * 0.32,
                        fit: BoxFit.fitWidth),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                children: [
                  Text(
                    "Welcome to STStore !",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.w700,
                      color: selectcolor().black,
                    ),
                  ),
                  spacer(
                      spacer_height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    "With long experience in the audio industry,\nwe create the best quality products",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      // fontWeight: FontWeight.w700,
                      color: selectcolor().grey_text_color,
                    ),
                  ),
                  spacer(
                      spacer_height: MediaQuery.of(context).size.height * 0.05),
                  // get started button
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: order_btn_suffix_widget_class(
                      bg_color: selectcolor().themecolor,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      border_radius: MediaQuery.of(context).size.height * 0.01,
                      text: "Get Started",
                      text_color: selectcolor().white,
                      text_size: MediaQuery.of(context).size.height * 0.025,
                      icon: Icons.arrow_forward,
                      icon_color: selectcolor().white,
                      icon_size: MediaQuery.of(context).size.height * 0.04,
                      suffix: true,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
