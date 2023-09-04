class InvalidNumberException implements Exception {
  String error() => "Number Invalid";

  @override
  String toString() {
    return error();
  }
}
