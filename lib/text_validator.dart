import 'text_cannot_contain_validator.dart';
import 'min_text_validator.dart';
import 'is_null_validator.dart';
import 'api/composite_validator.dart';

class TextValidator extends CompositeValidator {

  TextValidator.config();

  void isNull() {
    add(IsNullValidator());
  }

  void minText() {
    add(MinTextValidator());
  }

  void cannotContain123() {
    add(TextCannotContainValidator());
  }

}