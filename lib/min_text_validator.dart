import 'api/leaf_validator.dart';

class MinTextValidator extends LeafValidator {

  MinTextValidator(value): super('Minimum text length 6', value);

  @override
  bool isValid() {
    if (value != null) {
      return value!.length > 5;
    }
    return true;
  }

}