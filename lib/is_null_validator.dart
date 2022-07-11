import 'api/validator.dart';

class IsNullValidator extends Validator {

  String? value;

  IsNullValidator(this.value);

  @override
  bool isValid() => value != null;

  @override
  String error() => 'Please enter some text';

}