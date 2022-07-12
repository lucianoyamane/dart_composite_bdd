import 'api/leaf_validator.dart';

class TextCannotContainValidator extends LeafValidator {

  TextCannotContainValidator(value): super('Cannot contain 123', value);

  @override
  bool isValid() {
    if (value != null) {
      return !value!.contains('123');
    }
    return true;
  }

}