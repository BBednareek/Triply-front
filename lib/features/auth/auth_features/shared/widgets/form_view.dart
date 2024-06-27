import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/theme/colors.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/login_widgets/input_field.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';

class WelcomeForm extends StatelessWidget {
  const WelcomeForm({super.key, required this.action, required this.function});

  /// [0 - Login, 1 - Register]
  final int action;
  final Function function;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: height * .37,
              decoration: BoxDecoration(
                  color: ThemeColors.grey,
                  borderRadius: Paddings.radiusLeftRight100),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => context
                          .go(action == 0 ? Routes.register : Routes.login),
                      style: TextButton.styleFrom(
                        side: const BorderSide(color: ThemeColors.baseGreen),
                      ),
                      child: Text(
                        action == 0 ? "Rejestracja" : "Login",
                        style: const TextStyle(
                          color: ThemeColors.baseGreen,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    const Text(
                      "Witaj w",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/img/logo.png'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                InputFieldWidget(
                  width: width * .9,
                  isObscured: false,
                  onChanged: () {},
                  placeholder: "Email",
                  title: "Email",
                ),
                const SizedBox(height: 20),
                InputFieldWidget(
                  width: width * .9,
                  isObscured: false,
                  onChanged: () {},
                  placeholder: "Password",
                  title: "Password",
                ),
                const SizedBox(height: 20),
                LoginButton(
                  buttonTitle: action == 0 ? "Zaloguj" : "Dalej",
                  onPressed: () => function,
                )
              ],
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: Paddings.all16,
          child: Column(
            children: <Widget>[
              LoginButton(
                buttonTitle: action == 0
                    ? Platform.isIOS
                        ? "Zaloguj się przez Apple"
                        : "Zaloguj się przez Google"
                    : "Zarejestruj się przez Facebook",
                onPressed: () => function,
              ),
              const SizedBox(height: 10),
              LoginButton(
                buttonTitle: action == 0
                    ? Platform.isIOS
                        ? "Zarejestruj się przez Apple"
                        : "Zarejestruj się przez Google"
                    : "Zarejestruj się przez Facebook",
                onPressed: () => function,
              ),
            ],
          ),
        )
      ],
    );
  }
}
