import 'package:dart_composite_bdd/is_null_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      IsNullValidator validator = IsNullValidator(value: 'some_value');
      expect(validator.isValid(), true);
    });

    test('invalid', () {
      IsNullValidator validator = IsNullValidator(value: 'some_value');
      expect(validator.isInvalid(), false);
    });

    test('valid null', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isValid(), false);
    });

    test('invalid null', () {
      IsNullValidator validator = IsNullValidator();
      expect(validator.isInvalid(), true);
    });

    test('message', () {
      IsNullValidator validator = IsNullValidator(value: 'some_value');
      expect(validator.error(), 'Cannot be null');
    });

    test('custom message', () {
      IsNullValidator validator = IsNullValidator(message: 'custom_message');
      expect(validator.error(), 'custom_message');
    });
  });
}