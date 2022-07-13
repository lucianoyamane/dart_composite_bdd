import 'package:dart_composite_bdd/min_text_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.isValid('some_value'), true);
    });

    test('invalid', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.isInvalid('some_value'), false);
    });

    test('value invalid', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.isInvalid('some'), true);
    });

    test('valid null', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.isValid(null), true);
    });

    test('invalid null', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.isInvalid(null), false);
    });

    test('message', () {
      MinTextValidator validator = MinTextValidator(minimum: 5);
      expect(validator.errorMessage('abc'), 'Minimum text length 6');
    });

    test('custom message', () {
      MinTextValidator validator = MinTextValidator(minimum: 5, message: 'custom_message');
      expect(validator.errorMessage('abc'), 'custom_message');
    });
  });
}