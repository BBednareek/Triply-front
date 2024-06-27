import 'package:flutter/material.dart';
import 'package:triply/core/theme/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });

  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * .065,
      width: width * .9,
      child: ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: ThemeColors.baseGreen)),
        child: Text(
          buttonTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: ThemeColors.baseGreen,
          ),
        ),
      ),
    );
  }
}
