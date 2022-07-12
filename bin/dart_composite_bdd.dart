import 'package:dart_composite_bdd/text_validator.dart';

void main(List<String> arguments) {
  var value = null;

  var composite = TextValidator.config()..minText(value)..cannotContain123(value)..isNull(value);

  print(composite.error());
}
