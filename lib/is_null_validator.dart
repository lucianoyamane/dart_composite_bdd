import 'api/validator.dart';

class IsNullValidator extends Validator {

  String? value;

  IsNullValidator(this.value);

  @override
  bool isValid() {
    return value != null;
  }

  @override
  String error() {
    return 'Please enter some text';
  }

}