import 'api/leaf_validator.dart';

class TextCannotContainValidator extends LeafValidator {

  String validationText;

  TextCannotContainValidator({required this.validationText, message = 'Invalid text' }): super(message);

  @override
  bool isValid(String? value) {
    if (value != null) {
      return !value.contains(validationText);
    }
    return true;
  }

}