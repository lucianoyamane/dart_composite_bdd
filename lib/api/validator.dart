abstract class Validator {
  bool isValid();

  String error();

  bool isInvalid() => !isValid();
}