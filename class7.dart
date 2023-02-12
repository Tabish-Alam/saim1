import 'dart:async';

void main() {
  Systemslts expanse1 = Systemslts(emp_name: "Ahmed");
  expanse1.designer = 122;
  print(expanse1.emp_name);
  print("${expanse1.designer}");
  Employee emp1 = Employee("opmo");
  emp1.emp_name = "Ali";
  emp1.designer = 25000;
  print("${emp1.emp_name} is a designer and his salary is ${emp1.designer}");
  Systemslts expanse2 = Systemslts.position("manager");
  expanse2.developer = 50000;
  print(expanse2.developer);
}

class Systemslts {
  int manager = 0;
  int developer = 0;
  int designer = 0;
  int electric = 0;
  int gas = 0;
  int washing_water = 0;
  int drinking_water = 0;
  String emp_name = "";
  int emp_age = 0;
  String emp_position = "";

  Systemslts({emp_name = ''}) {
    this.emp_name = emp_name;
  }
  Systemslts.position([this.emp_position = "developer"]);

  expanses() {
    employee_salary(designer) {
      this.manager = 0;
      this.developer = 0;
      this.designer = designer;
    }

    utilitybills() {
      this.electric = 0;
      this.gas = 0;
      this.washing_water = 0;
      this.drinking_water = 0;
    }
  }
}

class Employee extends Systemslts {
  Employee(emp_name) : super(emp_name: emp_name);
  // print("Hello World");
}
