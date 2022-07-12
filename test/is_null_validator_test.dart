import 'package:dart_composite_bdd/is_null_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isValid('some_value'), true);
    });

    test('invalid', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isInvalid('some_value'), false);
    });

    test('valid null', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isValid(null), false);
    });

    test('invalid null', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isInvalid(null), true);
    });

    test('message', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.getMessage(null), 'Cannot be null');
    });

    test('custom message', () {
      IsNullValidator validator = IsNullValidator(message: 'custom_message');
      expect(validator.getMessage(null), 'custom_message');
    });
  });
}