import 'package:dart_composite_bdd/text_validator.dart';

void main(List<String> arguments) {
  var value = '123';

  var composite = TextValidator.message()..isNull(value)..minText(value)..cannotContain123(value);

  print(composite.error());
}
