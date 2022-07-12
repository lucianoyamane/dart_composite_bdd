import 'validator.dart';

class CompositeValidator extends Validator {
  final Set<Validator> _validators = {};

  CompositeValidator();

  void add(Validator validator) {
    _validators.add(validator);
  }

  Iterable<Validator> _validatorsIsInvalid(String? value) {
    return _validators.where((validator) => validator.isInvalid(value));
  }

  @override
  String? getMessage(String? value) {
    var isInvalid = _validatorsIsInvalid(value);
    Iterable<String?> errors = isInvalid.map((validator) => validator.getMessage(value));
    if (errors.isNotEmpty) {
      return errors.join(" | ");
    }
    return null;
  }

  @override
  bool isValid(String? value) {
    var isInvalid = _validatorsIsInvalid(value);
    return isInvalid.isEmpty;
  }
}