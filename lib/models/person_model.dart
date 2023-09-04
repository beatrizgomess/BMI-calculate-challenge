class Person {
  late String _name;

  double? _weight;

  double? _height;

  Person();

  String get getName => _name;

  set setName(String value) {
    _name = value;
  }

  double? get getweight => _weight;

  set setWeight(double? value) {
    _weight = value;
  }

  double? get getheight => _height;

  set setHeight(double? value) {
    _height = value;
  }
}
