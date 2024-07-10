import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/button_styles/button_styles.dart';
import 'package:triply/core/theme/styles/custom_styles.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class GreyContainer extends StatelessWidget {
  const GreyContainer({
    super.key,
    required this.buttonAvailable,
    this.buttonTitle,
    this.navigationMethod,
  });
  final bool buttonAvailable;

  final String? buttonTitle;

  final VoidCallback? navigationMethod;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          height: height * .35,
          decoration: BoxStyles.greyRadiusLeftRight100,
        ),
        buttonAvailable
            ? Column(
                children: <Widget>[
                  Padding(
                    padding: Paddings.all16,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        style: ButtonStyles.textButtonWithGreenBorder,
                        onPressed: () => navigationMethod!(),
                        child: Text(
                          buttonTitle!,
                          style: context.textStyle(fontSize18Green),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <SvgPicture>[
                      SvgPicture.asset(ImagePathes.triplyLogo),
                    ],
                  )
                ],
              )
            : Column(
                children: [
                  const SizedBox(height: 120),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <SvgPicture>[
                      SvgPicture.asset(ImagePathes.triplyLogo),
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}
