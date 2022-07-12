import 'package:dart_composite_bdd/text_cannot_contain_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      TextCannotContainValidator validator = TextCannotContainValidator(value: 'some_value');
      expect(validator.isValid(), true);
    });

    test('invalid', () {
      TextCannotContainValidator validator = TextCannotContainValidator(value: 'some_value');
      expect(validator.isInvalid(), false);
    });

    test('value invalid', () {
      TextCannotContainValidator validator = TextCannotContainValidator(value: '123');
      expect(validator.isValid(), false);
    });

    test('valid null', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isValid(), true);
    });

    test('invalid null', () {
      TextCannotContainValidator validator = TextCannotContainValidator();
      expect(validator.isInvalid(), false);
    });

    test('message', () {
      TextCannotContainValidator validator = TextCannotContainValidator(value: 'some_value');
      expect(validator.error(), 'Cannot be null');
    });

    test('custom message', () {
      TextCannotContainValidator validator = TextCannotContainValidator(message: 'custom_message');
      expect(validator.error(), 'custom_message');
    });
  });
}