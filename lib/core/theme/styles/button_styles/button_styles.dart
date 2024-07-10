import 'package:flutter/material.dart';
import 'package:triply/core/constants/constants.dart';
import 'package:triply/core/theme/colors.dart';
import 'package:triply/core/theme/paddings.dart';

class ButtonStyles extends Constants {
  static const BorderSide greenBorder =
      BorderSide(color: ThemeColors.baseGreen);

  static ButtonStyle textButtonWithGreenBorder =
      TextButton.styleFrom(side: greenBorder);

  static ButtonStyle loginThemeButton = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: Paddings.circular10,
      side: greenBorder,
    ),
    backgroundColor: ThemeColors.baseGreen,
  );
}
