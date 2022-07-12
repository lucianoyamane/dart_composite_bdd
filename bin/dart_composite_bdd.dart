import 'package:dart_composite_bdd/text_validator.dart';

void main(List<String> arguments) {
  var value = '123';

  var composite = TextValidator.config()..minText()..cannotContain123()..isNull();

  print(composite.errorMessage(value));
}
