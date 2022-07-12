import 'package:dart_composite_bdd/text_cannot_contain_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isValid('some_value'), true);
    });

    test('invalid', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isInvalid('some_value'), false);
    });

    test('value invalid', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isValid('123'), false);
    });

    test('valid null', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isValid(null), true);
    });

    test('invalid null', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isInvalid(null), false);
    });

    test('message', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.getMessage('123'), 'Cannot be null');
    });

    test('custom message', () {
      TextCannotContainValidator validator = TextCannotContainValidator(message: 'custom_message');
      expect(validator.getMessage('123'), 'custom_message');
    });
  });
}