abstract class Validator {
  bool isValid(String? value);

  String? errorMessage(String? value);

  bool isInvalid(String? value) => !isValid(value);
}