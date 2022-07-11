import 'package:dart_composite_bdd/is_null_validator.dart';
import 'package:test/test.dart';

void main() {
  group("IsNull", () {
    test('valid', () {
      IsNullValidator validator = IsNullValidator('some_value');
      expect(validator.isValid(), true);
    });

    test('invalid', () {
      IsNullValidator validator = IsNullValidator('some_value');
      expect(validator.isInvalid(), false);
    });

    test('valid null', () {
      IsNullValidator validator = IsNullValidator(null);
      expect(validator.isValid(), false);
    });

    test('invalid null', () {
      IsNullValidator validator = IsNullValidator(null);
      expect(validator.isInvalid(), true);
    });
  });
}