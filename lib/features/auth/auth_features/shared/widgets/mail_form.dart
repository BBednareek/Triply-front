import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/login_widgets/input_field.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

//TODO TRANSLATION STATE

class MailForm extends StatelessWidget {
  const MailForm({
    super.key,
    required this.emailChanged,
    required this.navigationMethod,
    required this.passwordChanged,
    required this.changeViewButtonText,
    required this.submittedMethod,
    required this.submittedText,
    required this.thirdPartyLogoPath,
    required this.thirdPartyTitle,
    required this.thirdPartyMethod,
    required this.loginForm,
  });

  final Function emailChanged;
  final Function passwordChanged;
  final Function navigationMethod;
  final Function submittedMethod;
  final Function thirdPartyMethod;

  final String changeViewButtonText;
  final String submittedText;
  final String thirdPartyLogoPath;
  final String thirdPartyTitle;

  final bool loginForm;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Form(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height * .37,
                decoration: Paddings.greyRadiusLeftRight100,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: Paddings.all16,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        style: TextButton.styleFrom(side: Paddings.greenBorder),
                        onPressed: () => navigationMethod,
                        child: Text(
                          changeViewButtonText,
                          style: context.textStyle(fontSize18Green),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: <Widget>[
                      Text(
                        "Witaj w",
                        style: context.textStyle(fontSize24Bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/img/triply_logo.svg')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  InputFieldWidget(
                    width: width * .9,
                    isObscured: false,
                    onChanged: emailChanged,
                    placeholder: "Email",
                    title: "Email",
                  ),
                  const SizedBox(height: 20),
                  InputFieldWidget(
                    width: width * .9,
                    isObscured: true,
                    onChanged: passwordChanged,
                    placeholder: "Password",
                    title: "Password",
                  ),
                  const SizedBox(height: 20),
                  LoginButton(
                    buttonTitle: submittedText,
                    onPressed: submittedMethod,
                  ),
                ],
              ),
            ],
          ),
          if (loginForm)
            TextButton(
                onPressed: () {},
                child: Text(
                  "Zapomniałeś hasła?",
                  style: context.textStyle(fontSize16W400grey),
                )),
          const Spacer(),
          Padding(
            padding: Paddings.all16,
            child: Column(
              children: <Widget>[
                LoginButton(
                  buttonTitle: thirdPartyTitle,
                  onPressed: thirdPartyMethod,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
