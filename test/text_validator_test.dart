import 'package:dart_composite_bdd/text_validator.dart';
import 'package:test/test.dart';

void main() {
  group("Text validator", () {

    test('test valid', () {
      var value = 'some_text';
      TextValidator validator = TextValidator.config()..minText()..cannotContain123()..isNull();;
      expect(validator.isValid(value), true);
      expect(validator.errorMessage(value), null);
    });

    test('123 test', () {
      var value = '123';
      TextValidator validator = TextValidator.config()..minText()..cannotContain123()..isNull();;
      expect(validator.isValid(value), false);
      expect(validator.errorMessage(value), 'Minimum text length 6 | Invalid text');
    });

    test('null test', () {
      String? value;
      TextValidator validator = TextValidator.config()..minText()..cannotContain123()..isNull();;
      expect(validator.isValid(value), false);
      expect(validator.errorMessage(value), 'Cannot be null');
    });
  });
}