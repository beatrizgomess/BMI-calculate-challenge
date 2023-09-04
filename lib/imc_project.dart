import 'dart:io';

import 'package:imc_project/exceptions/name_exception.dart';
import 'package:imc_project/models/person_model.dart';
import 'package:imc_project/services/imc_functions_services.dart';
import 'package:imc_project/utils/console_utils.dart';

void execute() {
  double? _weight;
  double? _height;
// Variables

  print("Calculate your BMI");
  bmiRaiting();
  String? name;

  name = ConsoleUtils.consoleReadStringMsg("Write Your Name:");
  try {
    if (name.trim() == "") {
      throw InvalidNameException();
    }
    // ignore: non_constant_identifier_names
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
    exit(0);
  }
  var person = Person();
  person.setName = name!;
  print(
      "HI ${person.getName}! Please let us know your weight and height below: ");
  _weight = ConsoleUtils.consoleReadDoubleWithExit(
      "Enter weight or type E to exit", "E");
  person.setWeight = _weight;
  if (_weight != null) {
    _height = ConsoleUtils.consoleReadDoubleWithExit(
        "Enter height or type E to exite", "E");
    person.setHeight = _height;
  }
  if (_weight == null || _height == null) {
    throw ArgumentError("Height and weight must not be empty");
  }

  if (_height != null) {
    double result = imcCalculate(_weight!, _height);
    print("${person.getName} your BMI is: ${result}");
  }
}
