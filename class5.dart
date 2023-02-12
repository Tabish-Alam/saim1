import 'dart:io';

void main() {
  // List mylist = ["shahid", "kumar", "anoop", "rishi", "ankitt"];
  // Map mymap = {1: "Ali", 2: "Osama", 3: "Ghani"};
  // List numlist = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // for (var i in numlist) {
  //   print(i);

  // }
  // var email = stdin.readLineSync();
  // var table = int.parse(stdin.readLineSync()!);
  // for (var i = 0; i <= 10; i++) {
  //   print(i * table);
  // }

  // var limit = 0;
  // var isloggedin = false;
  // while (isloggedin == false && limit <= 2) {
  //   var email = stdin.readLineSync();
  //   var password = stdin.readLineSync();
  //   if (email == "tabishalam566@gmail.com" && password == "123456") {
  //     print("Login Successful");
  //     isloggedin = true;
  //   } else {
  //     print("Login Failed");
  //     print("Try Again");
  //     limit++;
  //   }
  // }

  // var limit = 0;
  // do {
  //   limit++;
  //   print(limit);
  // } while (limit < 5);

//   var O = marksheet(name : "Ali",59, 90, 23, 70, 41,);
//   print(O['Percentage']);
//   marksheet(name : "Ali",59, 90, 23, 70, 41, sec: "A");
}

marksheet({required name, sub1, sub2, sub3, sub4, sub5, sec: "C"}) {
  var obt = sub1 + sub2 + sub3 + sub4 + sub5;
  var total = 500;
  var per = (obt / total) * 100;
  // print("$sec : $per");
  return {"Section": sec, "Percentage": per};
}
