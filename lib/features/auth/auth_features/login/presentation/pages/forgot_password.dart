import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/theme/styles/information_widgets/success_box.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';
import 'package:triply/core/theme/styles/shared/input_field.dart';
import 'package:triply/features/auth/auth_features/login/presentation/bloc/mail_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/grey_container.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key, required this.mailLoginBloc});

  final MailLoginBloc mailLoginBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mailLoginBloc,
      child: const _ForgotPassword(),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<MailLoginBloc, MailLoginState>(
            listener: (context, state) {
          if (state.posted) {
            Timer(const Duration(seconds: 3), () => context.pop());
          }
        }, builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const GreyContainer(buttonAvailable: false),
                SizedBox(height: height * .1),
                InputFieldWidget(
                  width: width * .8,
                  isObscured: false,
                  onChanged: (value) => context
                      .read<MailLoginBloc>()
                      .add(MailLoginEvent.emailChanged(email: value)),
                  title: "Wprowadź email, z którego założyłeś konto:",
                  placeholder: "",
                ),
                const SizedBox(height: 5),
                ShowSuccessMessage(
                  showMessage: state.posted,
                  successMessage:
                      "Powinieneś otrzymać link do zresetowania hasła, jeżeli podany adres mailowy znajduje się w naszej bazie",
                ),
                const SizedBox(height: 40),
                LoginButton(
                  buttonTitle: "Zmień hasło",
                  onPressed: () => context
                      .read<MailLoginBloc>()
                      .add(const MailLoginEvent.requestResetPassword()),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
