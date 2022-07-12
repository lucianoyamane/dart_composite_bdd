abstract class Validator {
  bool isValid(String? value);

  String? getMessage(String? value);

  bool isInvalid(String? value) => !isValid(value);
}