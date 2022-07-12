import 'validator.dart';

abstract class LeafValidator extends Validator {
  String message;

  LeafValidator(this.message);

  @override
  String? getMessage(String? value){
    if (isValid(value)) {
      return null;
    }
    return message;
  }
}