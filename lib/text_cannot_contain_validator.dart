import 'api/leaf_validator.dart';

class TextCannotContainValidator extends LeafValidator {

  TextCannotContainValidator({ message = 'Cannot be null',  value }): super(message, value);

  @override
  bool isValid() {
    if (value != null) {
      return !value!.contains('123');
    }
    return true;
  }

}