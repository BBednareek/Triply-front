import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/colors.dart';
import 'package:triply/core/theme/paddings.dart';
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
          side: Paddings.greenBorder,
          backgroundColor: ThemeColors.baseGreen,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (logoPath != null)
              SvgPicture.asset(
                logoPath!,
                height: 20,
                width: 20,
              ),
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
