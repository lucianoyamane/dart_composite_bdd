import 'validator.dart';

abstract class LeafValidator extends Validator {

  String? value;
  String message;

  LeafValidator(this.message, this.value);

  @override
  String error() => message;
}