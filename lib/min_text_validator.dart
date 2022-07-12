import 'api/leaf_validator.dart';

class MinTextValidator extends LeafValidator {

  MinTextValidator({ message = 'Minimum text length 6',  value }): super(message, value);

  @override
  bool isValid() {
    if (value != null) {
      return value!.length > 5;
    }
    return true;
  }

}