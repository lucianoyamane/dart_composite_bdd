import 'api/leaf_validator.dart';

class IsNullValidator extends LeafValidator {


  IsNullValidator({ message = 'Cannot be null',  value }): super(message, value);

  @override
  bool isValid() => value != null;

}