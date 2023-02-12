import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class speakerlist_view extends StatelessWidget {
  speakerlist_view({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
        itemCount: speakerlist.length,
        itemBuilder: (context, index) {
          return Container(
              height: 180,
              width: MediaQuery.of(context).size.width * 1,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                  decoration: BoxDecoration(
                      color: selectcolor().products_bg_color,
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(speakerlist[index].product_img),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                child: Text(speakerlist[index].product_name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              ),
                              spacer(spacer_height: 10),
                              Text(speakerlist[index].product_price,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: selectcolor().grey_text_color)),
                            ],
                          ),
                        ),
                        spacer(spacer_width: 50),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.monetization_on_outlined,
                                  size: 35,
                                )),
                            spacer(spacer_width: 10),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  size: 35,
                                ))
                          ]),
                        )
                      ],
                    ),
                  )));
        },
      ),
    ));
  }
}
