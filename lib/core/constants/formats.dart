import 'package:triply/core/constants/constants.dart';

class Formats extends Constants {
  static String emailRegex =
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$';

  static String passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^a-zA-Z0-9\s]).{8,16}$';
}
