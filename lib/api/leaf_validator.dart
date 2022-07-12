import 'validator.dart';

abstract class LeafValidator extends Validator {
  String message;

  LeafValidator(this.message);

  @override
  String? errorMessage(String? value){
    if (isValid(value)) {
      return null;
    }
    return message;
  }
}