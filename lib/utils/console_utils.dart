import 'dart:convert';
import 'dart:io';

import 'package:imc_project/exceptions/number_exception.dart';

class ConsoleUtils {
  static String consoleString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String consoleReadStringMsg(String msg) {
    print(msg);
    return consoleString();
  }

  static double consoleReadInfoDouble() {
    var value = consoleString();
    try {
      return double.parse(value);
    } catch (e) {
      return 0;
    }
  }

  static double consoleReadDoubleWithMsg(String msg) {
    print(msg);
    return consoleReadInfoDouble();
  }

  static double? consoleReadDoubleWithExit(String msg, String exit) {
    var value;
    try {
      value = consoleReadStringMsg(msg);
      if (value == exit) {
        print("See you later!!");
        return null;
      }

      var number = double.parse(value);
      if (double.tryParse(value)!.isNaN) {
        throw InvalidNumberException();
      }
      return number;
    } catch (e) {
      InvalidNumberException();
    }
  }
}
