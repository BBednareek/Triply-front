import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    this.imgPath,
    required this.height,
    required this.width,
    required this.buttonTitle,
    required this.onPressed,
  });

  final double height;
  final double width;
  final String buttonTitle;
  final Function onPressed;
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Colors.teal)),
        child: Text(
          buttonTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
