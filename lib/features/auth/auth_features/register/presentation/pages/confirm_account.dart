import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triply/core/constants/images.dart';

class ConfirmAccount extends StatelessWidget {
  const ConfirmAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 217,
              width: 224,
              child: SvgPicture.asset(ImagePathes.confirmAccount),
            ),
            const Text(
                "Aby skorzystać z aplikacji, prosimy potwierdź swoje konto. Na podany adres mailowy została wysłana wiadomość."),
          ],
        ),
      ),
    );
  }
}
