import 'validator.dart';

class CompositeValidator extends Validator {
  final Set<Validator> _validators = {};

  CompositeValidator();

  void add(Validator validator) {
    _validators.add(validator);
  }

  @override
  String error() {
    Set<String> erros = {};
    for (var validator in _validators) {
      if (validator.isInvalid()) {
        erros.add(validator.error());
      }
    }
    return erros.join(" | ");
  }

  @override
  bool isValid() {
    var valid = true;
    for (var validator in _validators) {
      if (validator.isInvalid()) {
        valid = false;
      }
    }
    return valid;
  }
}