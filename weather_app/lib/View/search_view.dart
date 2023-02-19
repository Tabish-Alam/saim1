import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/Controller/home_controller.dart';
import 'package:weather_app/Utils/colosrs.dart';
import 'package:weather_app/Utils/icons.dart';

class search_view extends StatefulWidget {
  const search_view({super.key});

  @override
  State<search_view> createState() => _search_viewState();
}

class _search_viewState extends State<search_view> {
  TextEditingController cityName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: selectcolor().search_bg_color,
        body: FutureBuilder(
            future: home_search(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    color: selectcolor().white,
                  ),
                );
              } else {
                var celcius = snapshot.data.main.temp - 273.15;
                return Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/home_bg.png"))),
                    child: Stack(
                      children: [
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                          top: MediaQuery.of(context).size.height * 0.4,
                          child: Image.asset(
                            "assets/home_bg_vector.png",
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.428,
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                          ),
                        ),

                        // text on home screen main
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${snapshot.data.name}, ${snapshot.data.sys.country}",
                                  style: TextStyle(
                                      color: selectcolor().white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  child: Text(
                                    celcius.toString(),
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: selectcolor().white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      // fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                Text(
                                  "${snapshot.data.weather[0].main}",
                                  style: TextStyle(
                                      color: selectcolor().grey,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "H:${snapshot.data.coord.lon.toString()}",
                                      style: TextStyle(
                                          color: selectcolor().white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Text(
                                      "L:${snapshot.data.coord.lat.toString()}",
                                      style: TextStyle(
                                          color: selectcolor().white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02),
                                    )
                                  ],
                                ),
                              ]),
                        ),

                        // main screen data start

                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                              color: selectcolor().transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: selectcolor().grey, width: 1)),
                          child: Column(children: [
                            Text(
                              DateTime.now().hour.toString(),
                              style: TextStyle(
                                  color: selectcolor().white,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.02),
                            )
                          ]),
                        )
                      ],
                    ));
              }
            }));
  }
}
