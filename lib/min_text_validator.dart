import 'api/leaf_validator.dart';

class MinTextValidator extends LeafValidator {

  MinTextValidator({ message = 'Minimum text length 6' }): super(message);

  @override
  bool isValid(String? value) {
    if (value != null) {
      return value.length > 5;
    }
    return true;
  }

}