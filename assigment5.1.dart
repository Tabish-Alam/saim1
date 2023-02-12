import 'dart:io';

void main() {
  // Q1
  // var limit = 0;
  // var isloggedin = false;
  // while (isloggedin == false && limit <= 5) {
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

  // Q2
  // var marks = marksheet(
  //     name: "Alam",
  //     rollno: 001,
  //     maths: 95,
  //     sci: 80,
  //     eng: 63,
  //     urdu: 56,
  //     pst: 40);
  // print(marks);

  // Q3
  // print(table());

  // Q4
  // phone ios = new phone();
  // print(ios.phonename);

  // Q5

//   var signup = false;
//   var isloggedin = false;
//   var new_email;
//   var new_password;
//   var limit = 0;
//   if (signup == false) {
//     print("please create your account first");
//     print("Name");
//     var name = stdin.readLineSync();
//     print("Contact no");
//     var contact_no = int.parse(stdin.readLineSync()!);
//     print("Email");
//     new_email = stdin.readLineSync();
//     // var user_id = new_email;
//     print("Password");
//     new_password = stdin.readLineSync();
//     signup = true;
//     print("Your account is created successfully!");
//   } else if (signup = true) {
//     var email = stdin.readLineSync();
//     var password = stdin.readLineSync();
//   } else {
//     print("please create your account first");
//   }

//   while (isloggedin == false && signup == true && limit <= 4) {
//     print("Enter your Email:");
//     var email = stdin.readLineSync();
//     print("Enter your Password:");
//     var password = stdin.readLineSync();
//     if (email == new_email && password == new_password) {
//       isloggedin = true;
//       print("Login Successful");
//     } else {
//       print("Worng Password");
//       limit++;
//     }
//   }
//   print("Enter the number to print table");
//   table();
}

// Q4
// class phone {
//   var phonename = "Iphone";
// }

// Q3,Q5 ( Q5 my bhi yehi data use kiya hy)
// table() {
//   var num = int.parse(stdin.readLineSync()!);
//   for (var i = 0; i <= 10; i++) {
//     print("$num x $i = ${num * i}");
//   }
// }
// Q2
// marksheet({name, rollno, maths, sci, eng, urdu, pst}) {
//   var obt = maths + sci + eng + urdu + pst;
//   var total = 500;
//   var per = (obt / total) * 100;

//   return [name, rollno, per];
// }
