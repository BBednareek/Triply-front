import 'package:formz/formz.dart';

class ConfirmPasswordValidator extends FormzInput<String, String> {
  final String password;

  const ConfirmPasswordValidator.pure({this.password = ""}) : super.pure("");
  const ConfirmPasswordValidator.dirty({
    required this.password,
    String value = "",
  }) : super.dirty(value);

  @override
  String? validator(String value) {
    if (password != value) {
      return "Podane hasła nie są takie same";
    }
    return null;
  }
}
