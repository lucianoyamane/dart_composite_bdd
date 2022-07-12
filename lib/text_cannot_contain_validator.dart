import 'api/leaf_validator.dart';

class TextCannotContainValidator extends LeafValidator {

  TextCannotContainValidator({ message = 'Cannot be null' }): super(message);

  @override
  bool isValid(String? value) {
    if (value != null) {
      return !value.contains('123');
    }
    return true;
  }

}