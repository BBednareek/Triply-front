import 'package:triply/core/constants/constants.dart';

class Routes extends Constants {
  static const String noInternet = '/noInternet';

  static const String loading = '/loading';

  static const String login = '/login';
  static const String resetPassword = '$login/resetPassword';

  static const String register = '/register';
  static const String registerForm = '$register/form';

  static const String dashboard = '/dashboard';
  static const String settings = '/settings';
}
