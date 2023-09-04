import 'dart:math';

double imcCalculate(double weight, double height) {
  double imc = weight / (pow(height, 2));
  if (height <= 0 || weight <= 0) {
    throw ArgumentError("Height and weight must be greater than zero");
  } else {
    if (imc <= 16) {
      print("MAGREZA GRAVE");
    }
    if (imc >= 16 && imc <= 17) {
      print("MAGREZA MODERADA");
    }
    if (imc >= 17 && imc <= 18.5) {
      print("MAGREZA LEVE");
    }
    if (imc >= 18.5 && imc <= 25) {
      print("SAUDÁVEL");
    }
    if (imc >= 25 && imc <= 30) {
      print("SOBREPESO");
    }
    if (imc >= 30 && imc <= 35) {
      print("OBESIDADE GRAU |");
    }
    if (imc >= 35 && imc <= 40) {
      print("OBESIDADE GRAU (Severa) ||");
    }
    if (imc > 40) {
      print("OBESIDADE GRAU (Mórbida) |||");
    }
  }
  return imc.truncateToDouble();
}

void bmiRaiting() {
  print("BMI CLASSIFICATION. WHAT IS YOURS??");
  print("=" * 50);
  print("BMI -------------- Raiting");
  print("< 16         |  MAGREZA GRAVE");
  print("16 a < 17    |  MAGREZA MODERADA");
  print("17 a < 18,5  |  MAGREZA LEVE");
  print("18,5 a < 25  |  SAUDÁVEL");
  print("25 a < 30    |  SOBREPESO");
  print("30 a < 35    |  OBSEDIDADE GRAU |");
  print("35 a < 40    |  OBSEDIDADE GRAU (Severa) ||");
  print("(Maior Igual a) >= 40  | OBSEDIDADE GRAU (Mórbida) |||");
  print("=" * 50);
}
