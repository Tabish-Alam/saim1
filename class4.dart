void main() {
  // int num1 = 2;
  // int num2 = ++num1 + num1++;
  // // int num3 = ++num1;

  // print(num2);
  // print(num2);

  // print(num1);
  // print(num1);

  // int a = 2;

  // for (var i = 1; i <= 10; i++) {
  //   print("$a x $i = ${i * a}");
  // }

  // List marks = [
  //   {"name": "Tabish", "urdu": 25, "eng": 30, "sci": 15},
  //   {"name": "Ahmed", "urdu": 10, "eng": 27, "sci": 36},
  //   {"name": "Owais", "urdu": 2, "eng": 13, "sci": 40},
  //   {"name": "Shahzeb", "urdu": 14, "eng": 12, "sci": 19},
  //   {"name": "Yaseen", "urdu": 29, "eng": 18, "sci": 3}
  // ];

  // for (var a = 0; a < 10; a++) {

  // }
  List marks = [
    {
      "name": "Tabish",
      "roll no": 1,
      "subject": {"urdu": 25, "eng": 30, "sci": 15}
    },
    {
      "name": "Ali",
      "roll no": 1,
      "subject": {"urdu": 21, "eng": 26, "sci": 10}
    },
    {
      "name": "Yaseen",
      "roll no": 1,
      "subject": {"urdu": 23, "eng": 32, "sci": 11}
    },
    {
      "name": "Shahzeb",
      "roll no": 1,
      "subject": {"urdu": 15, "eng": 20, "sci": 1}
    },
  ];
  for (var i = 0; i < marks.length; i++) {
    for (var k = 0; k < 1; k++) {
      print("The name of the student is ${marks[i]['name']}");
    }
    // print("----------------------------Marksheet---------------------------");
    // print("Student name is ${marks[i]['name']}");
    // print("Student roll number is ${marks[i]['roll no']}");
    // print("Student marks in urdu is ${marks[i]['subject']['urdu']}");
    // print("Student marks in english is ${marks[i]['subject']['eng']}");
    // print("Student marks in science is ${marks[i]['subject']['sci']}");
    // print(
    //     "Student's total marks is ${marks[i]['subject']['sci'] + marks[i]['subject']['eng'] + marks[i]['subject']['urdu']}");
    // print(
    //     "Student's percentage is ${marks[i]['subject']['sci'] + marks[i]['subject']['eng'] + marks[i]['subject']['urdu'] * 100 / 150}%");
  }
}
