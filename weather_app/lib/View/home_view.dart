import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/Controller/home_controller.dart';
import 'package:weather_app/Utils/colosrs.dart';
import 'package:weather_app/Utils/icons.dart';
import 'package:weather_app/View/search_view.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  TextEditingController cityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().search_bg_color,
        appBar: AppBar(
          backgroundColor: selectcolor().transparent,
          elevation: 0.0,
          title: Text(
            "Weather",
            style: TextStyle(
              color: selectcolor().white,
              fontSize: MediaQuery.of(context).size.height * 0.03,
              // fontWeight: FontWeight.w600
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(select_icon().menu))
          ],
        ),
        body: FutureBuilder(
            future: home_search(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                    child: CircularProgressIndicator(
                  color: selectcolor().white,
                ));
              } else {
                var celcius = snapshot.data.main.temp - 273.15;
                return Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: TextFormField(
                                controller: cityName,
                                textAlignVertical: TextAlignVertical.center,

                                // cursorColor: Colors.red,
                                style: TextStyle(color: selectcolor().grey),
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  suffix: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    // alignment: Alignment.bottomLeft,
                                    child: IconButton(
                                      icon: Icon(
                                        select_icon().search_btn,
                                        color: selectcolor().grey,
                                        size:
                                            MediaQuery.of(context).size.height *
                                                0.035,
                                      ),
                                      onPressed: () {
                                        if (snapshot.data.name ==
                                            cityName.text) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    search_view(),
                                              ));
                                        }
                                      },
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    select_icon().search,
                                    color: selectcolor().grey,
                                    // size: MediaQuery.of(context).size.height * 0.035,
                                  ),
                                  focusColor: selectcolor().grey,
                                  hintText: "Enter Your City",
                                  hintMaxLines: 1,
                                  hintStyle: TextStyle(
                                    color: selectcolor().grey,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: selectcolor().grey, width: 1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                          color: selectcolor().grey, width: 1)),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/search_bg_vector.png"),
                                            fit: BoxFit.fitWidth)),
                                    child: Stack(children: [
                                      Positioned(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                child: Text(
                                                  celcius.toString(),
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    color: selectcolor().white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.07,
                                                    // fontWeight: FontWeight.w600
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "H:${snapshot.data.coord.lon.toString()}",
                                                    style: TextStyle(
                                                        color:
                                                            selectcolor().grey,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.02),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.02,
                                                  ),
                                                  Text(
                                                    "L:${snapshot.data.coord.lat.toString()}",
                                                    style: TextStyle(
                                                        color:
                                                            selectcolor().grey,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.02),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                "${snapshot.data.name}, ${snapshot.data.sys.country}",
                                                style: TextStyle(
                                                    color: selectcolor().white,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.025),
                                              ),
                                            ]),
                                      ),
                                      Positioned(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.19,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        child: Text(
                                          "${snapshot.data.weather[0].main}",
                                          style: TextStyle(
                                            color: selectcolor().white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                            // fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          // top: MediaQuery.of(context).size.height * 0.19,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          child: Image.asset(
                                              "assets/weather_vector_1.png")),
                                    ]));
                              }),
                        )
                      ],
                    ));
              }
            }));
  }
}
