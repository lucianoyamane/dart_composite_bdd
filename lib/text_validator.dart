import 'text_cannot_contain_validator.dart';
import 'min_text_validator.dart';
import 'is_null_validator.dart';
import 'api/composite_validator.dart';

class TextValidator extends CompositeValidator {

  TextValidator.config();

  void isNull(String? value) {
    add(IsNullValidator(value:value));
  }

  void minText(String? value) {
    add(MinTextValidator(value:value));
  }

  void cannotContain123(String? value) {
    add(TextCannotContainValidator(value:value));
  }

}