import 'dart:io';

class Calculator {
  void init() {
    while (true) {
      print('Enter a number (0 to end the program)> ');
      var firstNum = stdin.readLineSync();

      if (int.parse(firstNum) == 0) {
        break;
      }

      print('Enter another number > ');
      var secondNum = stdin.readLineSync();

      print('Enter a operator (* / + - %) > ');
      var operator = stdin.readLineSync();

      switch (operator) {
        case '*':
          {
            print(multiply(double.parse(firstNum), double.parse(secondNum)));
          }
          break;

        case '+':
          {
            print(add(double.parse(firstNum), double.parse(secondNum)));
          }
          break;

        case '-':
          {
            print(subtract(double.parse(firstNum), double.parse(secondNum)));
          }
          break;

        case '/':
          {
            print(divide(double.parse(firstNum), double.parse(secondNum)));
          }
          break;

        case '%':
          {
            print(modulo(double.parse(firstNum), double.parse(secondNum)));
          }
          break;
      }
    }
  }

  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  double modulo(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }
}
