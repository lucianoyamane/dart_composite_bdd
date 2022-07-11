import 'text_cannot_contain_validator.dart';
import 'min_text_validator.dart';
import 'is_null_validator.dart';
import 'api/composite_validator.dart';

class TextValidator extends CompositeValidator {

  TextValidator.message();

  void isNull(String? value) {
    add(IsNullValidator(value));
  }

  void minText(String? value) {
    add(MinTextValidator(value));
  }

  void cannotContain123(String? value) {
    add(TextCannotContainValidator(value));
  }

}