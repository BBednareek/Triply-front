import 'package:formz/formz.dart';
import 'package:triply/core/constants/formats.dart';

class EmailValidator extends FormzInput<String, String> {
  const EmailValidator.pure() : super.pure('');
  const EmailValidator.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String value) {
    final emailRegExp = RegExp(Formats.emailRegex);
    if (!emailRegExp.hasMatch(value)) {
      return "Błędny adres e-mail!";
    }
    return null;
  }
}
