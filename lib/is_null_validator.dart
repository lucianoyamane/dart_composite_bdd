import 'api/leaf_validator.dart';

class IsNullValidator extends LeafValidator {


  IsNullValidator(value): super('Cannot be null', value);

  @override
  bool isValid() => value != null;

}