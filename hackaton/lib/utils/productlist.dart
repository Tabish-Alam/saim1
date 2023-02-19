import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:hackaton/utils/colors.dart';
import 'package:hackaton/views/home.dart';

// database connection start
final CollectionReference _database =
    FirebaseFirestore.instance.collection("plants_database");
final CollectionReference _favourite =
    FirebaseFirestore.instance.collection("favourite_database");

class productlist_view extends StatefulWidget {
  const productlist_view({super.key});

  @override
  State<productlist_view> createState() => _productlist_viewState();
}

class _productlist_viewState extends State<productlist_view> {
  // database connection end
  var cart = false;
  var favourite = false;

  add_data() async {
    FirebaseFirestore.instance.collection("plants_database").add({
      'name': name.text,
      'price': price.text,
      'description': description.text,
      "light_contain": Light.text,
      'water_contain': water.text,
      'fertilizer_contain': fertilizer.text,
      'img': img.text,
      'favourite': favourite,
      'cart': cart,
      'bg_color': plant_widget_colors,
    });
    //   description.text= ;
    //   img.text = ;
    //   fertilizer.text=
    //   water.text =
    //   Light.text =
    //   price.text =
  }

  Key _form = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController img = TextEditingController();
  TextEditingController fertilizer = TextEditingController();
  TextEditingController water = TextEditingController();
  TextEditingController Light = TextEditingController();
  TextEditingController price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Name
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: name,
                  min_lines: 1,
                  hint_text: "Enter name of plant"),

              // price
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: price,
                  min_lines: 1,
                  hint_text: "Enter price of plant"),

              // image
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: img,
                  min_lines: 1,
                  hint_text: "Enter image URL"),

              // Light contain
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: Light,
                  min_lines: 1,
                  hint_text: "Percentage of Light contain"),
              // Water Contain
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: water,
                  min_lines: 1,
                  hint_text: "Percentage of Water contain"),
              // Fertilizer Contain
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: fertilizer,
                  min_lines: 1,
                  hint_text: "Percentage of Fertilizer contain"),
              // Description
              input_text(
                  height: MediaQuery.of(context).size.height * 0.1,
                  control: description,
                  min_lines: 3,
                  hint_text: "Enter Description of Plant"),
              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                  onPressed: () {
                    add_data();
                  },
                  child: Text("Submit"))
            ]),
      ),
    );
  }

  Widget input_text({height, control, hint_text, min_lines = 1}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: height,
      child: TextFormField(
        controller: control,
        maxLines: min_lines,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: Selectcolor().grey_text_color, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  BorderSide(color: Selectcolor().grey_text_color, width: 1),
            ),
            hintText: hint_text),
      ),
    );
  }
}
