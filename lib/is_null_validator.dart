import 'api/leaf_validator.dart';

class IsNullValidator extends LeafValidator {

  IsNullValidator({ message = 'Cannot be null' }): super(message);

  @override
  bool isValid(String? value) => value != null;

}