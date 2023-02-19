import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:weather_app/Model/home_model.dart';

home_search() async {
  var BaseURL =
      "https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=f5783e1fee68d6228723ecc46804ee40";
  var URL = Uri.parse(BaseURL);
  var response = await http.get(URL);
  var json_to_dart = jsonDecode(response.body);
  var weather_data = weatherData.fromJson(json_to_dart);
  // var celcius =
  // weather_data.main!.temp == null ? null : weather_data.main!.temp  273.15;
  return weather_data;
}
