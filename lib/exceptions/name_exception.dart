class InvalidNameException implements Exception {
  String error() => "Invalid Name";

  @override
  String toString() {
    // TODO: implement toString
    return error();
  }
}
