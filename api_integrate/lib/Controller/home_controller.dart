import 'dart:convert';

import 'package:api_integrate/Model/User_Model.dart';
import 'package:api_integrate/Model/User_profile.dart';
import 'package:api_integrate/Views/User_profile.dart';
import 'package:http/http.dart' as http;

json_file() async {
  var userdata = [];
  var baseURL = "https://jsonplaceholder.typicode.com/users";
  var URL = Uri.parse(baseURL);
  var res = await http.get(URL);
  var jsonRES = jsonDecode(res.body);
  for (var index in jsonRES) {
    userdata.add(UserModel.fromJson(index));
  }

  return userdata;
}

user_data(userID) async {
  var baseURL = "https://jsonplaceholder.typicode.com/users/$userID";
  var URL = Uri.parse(baseURL);
  var res = await http.get(URL);
  var jsonRES = jsonDecode(res.body);
  if (res.statusCode == 200) {
    var userdata = UserProfile.fromJson(jsonRES);

    return userdata;
  }
}
