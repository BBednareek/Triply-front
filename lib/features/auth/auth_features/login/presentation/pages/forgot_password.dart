import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        child: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
