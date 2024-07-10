import 'package:formz/formz.dart';
import 'package:triply/core/constants/formats.dart';

// TODO Translation

class PasswordValidator extends FormzInput<String, String> {
  const PasswordValidator.pure() : super.pure('');
  const PasswordValidator.dirty([super.value = '']) : super.dirty();

  @override
  validator(String value) {
    final passwordRegExp = RegExp(Formats.passwordRegex);

    if (!passwordRegExp.hasMatch(value)) {
      return "Haslo musi zawierac od 8 do 16 znakow, 1 specjalny, 1 duza litera, 1 cyfra";
    }

    return null;
  }
}
