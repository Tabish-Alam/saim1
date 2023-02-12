void main() {
// Q.1: Create a list of names and print all names using list.

  List names = [
    "Ali",
    "Usama",
    "Abdullah",
    "Haroon",
    "Wajid",
    "Khalil",
    "Musa",
    "Owais",
    "Ansar",
    "Shehroz",
    "Shahzeb"
  ];

  print(names);

// Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

  List<String> days = [];
  print(days);
  days.addAll(["Mon", "Tues", "Wed", "Thu", "Fri", "Sat", "Sun"]);
  print(days);
  days.add("Monday");
  days.remove("Mon");
  days.removeAt(2);
  days.removeRange(2, 4);
  print(days);
  days.reversed;
  print(days);
  days.insert(0, "Mon");
  print(days);
  days.insertAll(2, ["Thursday", "Friday"]);
  print(days);

// Q3.Add your 7 friend names to the list. Use where to find a day name that starts with alphabet a.

  List<String> friends = [
    "Ghani",
    "Saif",
    "Shoaib",
    "Shariq",
    "Rafay",
    "Hamza",
    "Wali",
    "Mohsin",
    "Asim",
    "Ahmed",
    "Ali",
    "Ayaz"
  ];
  print(friends);
  print(friends[6][0]);
  var a = List.of(friends.reversed);
  print(a);

// Q.4 Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.

  Map data = {
    "name": "Ali",
    "address": "Karachi",
    "age": 26,
    "country": "Pakistan"
  };
  print(data);
  data.addAll({"country": "Germany"});
  print(data);
  data.putIfAbsent("country", () => "Canada");
  print(data);
  data.update("country", (dynamic) => "France");
  print(data);

// Q.5 Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  Map<String, int> call = {
    "Obaid": 03129785231,
    "Ali": 03312258430,
    "Osama": 03362185990,
    "Jamshed": 03462135890
  };
  print(call);
  print(call.values);
  print(call["Ali"]);
  print(call[4]);
  print(call);

// Q.6:
// Create Map variable name world then inside it create countries Map (dart Map) and using key, value pair assign country, capitalCity, currency and language to it. Search for ".forEach()" mehtod and using it print all the value of world variable.

  Map world = {
    "Pakistan": {"language": "urdu", "Currency": "PKR", "Capital": "Karachi"},
    "India": {"language": "Hindi", "Currency": "INR", "Capital": "Dehli"},
    "America": {
      "language": "English",
      "Currency": "USD",
      "Capital": "Washington"
    },
  };

  // print(world);
// Q7
// Using ".removeWhere()" method remove key, value where value <= 30 then print the updated map mathMarks variable.

  Map<String, double> mathMarks = {
    'ram': 30,
    'mark': 32,
    'harry': 88,
    'raj': 69,
    'john': 15,
  };

  mathMarks.removeWhere((key, value) {
    return value <= 30;
  });
  print(mathMarks);

// Q8
  // Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  expenses.putIfAbsent('fri', () => 5000.0);
  print(expenses);
}
