import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:st_ecommerce_store/customwidgets.dart';
import 'package:st_ecommerce_store/productlist.dart';
import 'package:st_ecommerce_store/properties.dart';

class order_review extends StatefulWidget {
  const order_review({super.key});

  @override
  State<order_review> createState() => _order_reviewState();
}

class _order_reviewState extends State<order_review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().white,
        appBar: AppBar(
          backgroundColor: selectcolor().white,
          elevation: 0,
          leading: Icon(
            Icons.view_headline_outlined,
            color: selectcolor().black,
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          // alignment: Alignment.bottomLeft,
                          child: Text(
                        "Products",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      )),
                      Container(
                        // alignment: Alignment.topRight,
                        child: Icon(Icons.arrow_drop_down_circle_outlined),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: double.infinity,
                  child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      scrollDirection: Axis.horizontal,
                      itemCount: productlist.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            icon_btn_widget_class(
                              Width: 100,
                              height: 100,
                              bg_color: selectcolor().products_bg_color,
                              border_radius: 25,
                              img_widget: true,
                              img: productlist[index].product_img,
                              img_height: 100,
                              img_width: 100,
                            ),
                            spacer(spacer_width: 110, spacer_height: 5),
                            Text("${productlist[index].product_name}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ],
                        );
                      }),
                ),
              
              Divider(thickness: 1,
              color: selectcolor().grey_color,
              height: 1,),
            
              spacer(spacer_height: 25,
              ),
            
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("SHIPPING", style: TextStyle(color: selectcolor().grey_text_color, fontSize: 15, fontWeight: FontWeight.w700),)),
              ),
            
              spacer(spacer_height: 15,),
              Container(
                width: MediaQuery.of(context).size.width*0.95,
                child: ListTile(leading: Icon(Icons.location_on_outlined, color: selectcolor().black,size: 30,),
                title: Text("139 Haystreet,Perth", style: TextStyle(color: selectcolor().black, fontSize: 18, fontWeight: FontWeight.w700),),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: selectcolor().themecolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                  
                },child: Text("Change", style: TextStyle(color: selectcolor().black, fontSize: 12, fontWeight: FontWeight.w700),)),),
              ),
            
              spacer(spacer_height: 15),
            
            
              Container(
                width: MediaQuery.of(context).size.width*0.85,
                height: 70,
                decoration: BoxDecoration(border: Border.all(color: selectcolor().grey_color),
                borderRadius: BorderRadius.circular(20)),
                child: ListTile(leading: Icon(Icons.shopping_cart_outlined, color: selectcolor().black,size: 30,),
                title: Text("Standard", style: TextStyle(color: selectcolor().black, fontSize: 18, fontWeight: FontWeight.w700),),
                subtitle: Text("2-3 days", style: TextStyle(color: selectcolor().grey_text_color, fontSize: 18, fontWeight: FontWeight.w500),),
                trailing: Icon(Icons.arrow_downward_outlined,color: selectcolor().black,size: 30)),
              ),
            
              spacer(spacer_height: 15,),
            
            
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("PAYMENT", style: TextStyle(color: selectcolor().grey_text_color, fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
            
              spacer(spacer_height: 15,),
            
            
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width*0.90,
                decoration: BoxDecoration(color: selectcolor().black, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    spacer(spacer_width: 20),
                  Image.asset("assets/images/payment_img.png"),
                  spacer(spacer_width: 20),
                Text("****", style: TextStyle(color: selectcolor().white, fontSize: 18, fontWeight: FontWeight.w700),),
                spacer(spacer_width: 10),
                Text("9000", style: TextStyle(color: selectcolor().white, fontSize: 18, fontWeight: FontWeight.w700),),
                // spacer(spacer_width: 20),
            
                Container(
                   width: MediaQuery.of(context).size.width*0.4,
            
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: selectcolor().themecolor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                      
                    },child: Text("Change", style: TextStyle(color: selectcolor().black, fontSize: 12, fontWeight: FontWeight.w700),)),
                )
                ],),
              ),
            
              spacer(spacer_height: 25),
            
              Divider(thickness: 1,
              color: selectcolor().grey_color,
              height: 1,),
            
              spacer(spacer_height: 25),
            
              Column(
                
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping", style: TextStyle(color: selectcolor().grey_text_color, fontSize: 15, fontWeight: FontWeight.w500),),
              
                        Text("Free", style: TextStyle(color: selectcolor().grey_text_color, fontSize: 15, fontWeight: FontWeight.w500),),
              
              
                      ],
                    ),
                  ),
              
                  spacer(spacer_height: 10),
                    Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:", style: TextStyle(color: selectcolor().black, fontSize: 18, fontWeight: FontWeight.w500),),
              
                        Text("S9,800", style: TextStyle(color: selectcolor().black, fontSize: 18, fontWeight: FontWeight.w600),),
              
              
                      ],
                    ),
                  ),
              
                  // bottom button
              
                   spacer(spacer_height: 80),
                      order_btn_suffix_widget_class(
                        height: 50,
                        width: 320,
                        bg_color: selectcolor().themecolor,
                        border_radius: 10,
                        text: "Place Order",
                        text_color: selectcolor().white,
                        text_size: 15,
                        icon: Icons.arrow_forward_sharp,
                        icon_color: selectcolor().white,
                        suffix: true,
                        icon_size: 20,
                      ),
                      // spacer(spacer_height: 10),
              
                ],
              ),
              
            ],),
          ],
        ));
  }
}
