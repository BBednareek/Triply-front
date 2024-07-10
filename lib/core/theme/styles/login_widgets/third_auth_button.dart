import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdAuthButton extends StatelessWidget {
  const ThirdAuthButton({
    super.key,
    required this.buttonTitle,
    required this.logoPath,
    required this.onPressed,
  });

  final String buttonTitle;
  final String logoPath;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
      width: width * .8,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(elevation: 10),
        onPressed: () => onPressed(),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(logoPath),
            ),
            const SizedBox(width: 25),
            Text(buttonTitle),
          ],
        ),
      ),
    );
  }
}
