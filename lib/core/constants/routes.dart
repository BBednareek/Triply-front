import 'package:triply/core/constants/constants.dart';

class Routes extends Constants {
  static const noInternet = '/noInternet';

  static const login = 'login';
  static const resetPassword = '$login/resetPassword';

  static const register = 'register';
  static const registerForm = '$register/form';

  static const start = 'start';
  static const settings = 'settings';
}
