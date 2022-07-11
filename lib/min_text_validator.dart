import 'api/validator.dart';

class MinTextValidator extends Validator {
  String? value;

  MinTextValidator(this.value);

  @override
  bool isValid() {
    if (value != null) {
      return value!.length > 5;
    }
    return true;
  }

  @override
  String error() {
    return 'Minimum text length 6';
  }
}