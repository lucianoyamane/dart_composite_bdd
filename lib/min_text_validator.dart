import 'api/leaf_validator.dart';

class MinTextValidator extends LeafValidator {

  int minimum;

  MinTextValidator({required this.minimum, message = 'Minimum text length 6' }): super(message);

  @override
  bool isValid(String? value) {
    if (value != null) {
      return value.length > minimum;
    }
    return true;
  }

}