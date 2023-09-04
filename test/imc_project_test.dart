import 'package:imc_project/models/person_model.dart';
import 'package:imc_project/services/imc_functions_services.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(imcCalculate(70, 1.68), 24.00);
  });
  test('BMI Calculate with negative height', () {
    expect(() => imcCalculate(68, -1.68), throwsA(isA<ArgumentError>()));
  });
  test('BMI Calculate with 0 weight', () {
    expect(() => imcCalculate(0, 1.68), throwsA(TypeMatcher<ArgumentError>()));
  });
  test('BMI Calculate with 0 height', () {
    expect(() => imcCalculate(70, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
  test('BMI Calculate with negative weight and height', () {
    expect(() => imcCalculate(-68, -1.68), throwsA(isA<ArgumentError>()));
  });
  test('BMI Calculate with negative weight', () {
    expect(() => imcCalculate(-68, 1.68), throwsA(isA<ArgumentError>()));
  });
  test('BMI Calculate with negative height', () {
    expect(() => imcCalculate(68, -1.68), throwsA(isA<ArgumentError>()));
  });
  // test('calculateimc with decimal values', () {
  //   expect(imcCalculate(63.5, 1.65), closeTo(23.3, 0.1));
  // });

  test('BMI Calculate with decimal values', () {
    expect(imcCalculate(68.5, 1.68), closeTo(0.1, 24.0));
  });

  test('Pessoa class attributes', () {
    Person person = Person();
    person.setName = 'Bea';
    person.setWeight = 65;
    person.setHeight = 1.60;

    expect(person.getName, 'Bea');
    expect(person.getweight, 65);
    expect(person.getheight, 1.60);
  });
}
