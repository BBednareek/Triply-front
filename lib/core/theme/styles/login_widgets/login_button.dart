import 'package:flutter/material.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/styles/button_styles/button_styles.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    this.logoPath,
  });

  final String buttonTitle;
  final String? logoPath;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 60,
      width: width * .8,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ButtonStyles.loginThemeButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Text>[
            Text(
              buttonTitle,
              style: context.textStyle(fontSize18Weight600White),
            ),
          ],
        ),
      ),
    );
  }
}
