import 'validator.dart';

class CompositeValidator extends Validator {
  final Set<Validator> _validators = {};

  CompositeValidator();

  void add(Validator validator) {
    _validators.add(validator);
  }

  @override
  String getMessage(String? value) {
    Set<String?> erros = {};
    for (var validator in _validators) {
      if (validator.isInvalid(value)) {
        erros.add(validator.getMessage(value));
      }
    }
    return erros.join(" | ");
  }

  @override
  bool isValid(String? value) {
    var valid = true;
    for (var validator in _validators) {
      if (validator.isInvalid(value)) {
        valid = false;
      }
    }
    return valid;
  }
}