import 'api/validator.dart';

class TextCannotContainValidator extends Validator {

  String? value;

  TextCannotContainValidator(this.value);

  @override
  bool isValid() {
    if (value != null) {
      return !value!.contains('123');
    }
    return true;
  }

  @override
  String error() => 'Cannot contain 123';

}