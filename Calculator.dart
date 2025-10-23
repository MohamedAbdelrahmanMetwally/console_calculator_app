import 'dart:io';

class Calculator {
  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double division(double a, double b) {
    if (b == 0) {
      print("You can not divide over zero");
      return double.nan;
    }
    return a / b;
  }

  void run() {
    bool loop = true;
    while (loop) {
      print("Enter the first Number : ");
      double firstNumber = double.parse(stdin.readLineSync()!);
      print("Enter the second Number : ");
      double secondNumber = double.parse(stdin.readLineSync()!);
      print("Enter the operator (+ - * / )\n any other key is exit : ");
      String operator = stdin.readLineSync()!;
      switch (operator) {
        case "+":
          print(add(firstNumber, secondNumber));
          break;
        case "-":
          print(subtract(firstNumber, secondNumber));
          break;
        case "*":
          print(multiply(firstNumber, secondNumber));
          break;
        case "/":
          print(division(firstNumber, secondNumber));
          break;
        default:
          loop = false;
      }
    }
  }
}
