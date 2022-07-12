import 'package:dart_composite_bdd/min_text_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      MinTextValidator validator = MinTextValidator(value: 'some_value');
      expect(validator.isValid(), true);
    });

    test('invalid', () {
      MinTextValidator validator = MinTextValidator(value: 'some_value');
      expect(validator.isInvalid(), false);
    });

    test('value invalid', () {
      MinTextValidator validator = MinTextValidator(value: 'some');
      expect(validator.isInvalid(), true);
    });

    test('valid null', () {
      MinTextValidator validator = MinTextValidator();
      expect(validator.isValid(), true);
    });

    test('invalid null', () {
      MinTextValidator validator = MinTextValidator();
      expect(validator.isInvalid(), false);
    });

    test('message', () {
      MinTextValidator validator = MinTextValidator();
      expect(validator.error(), 'Minimum text length 6');
    });

    test('custom message', () {
      MinTextValidator validator = MinTextValidator(message: 'custom_message');
      expect(validator.error(), 'custom_message');
    });
  });
}