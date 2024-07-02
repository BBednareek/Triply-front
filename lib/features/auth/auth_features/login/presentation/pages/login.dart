import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/auth.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/features/auth/auth_features/login/presentation/bloc/mail_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/blocs/authentication_blocs/3rd_auth_bloc/third_auth_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/mail_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThirdAuthBloc(
            appleApiUsecase: locator(),
            appleFirebaseUsecase: locator(),
            googleApiUsecase: locator(),
            googleFirebaseUsecase: locator(),
          ),
        ),
        BlocProvider(
          create: (context) => MailLoginBloc(
            mailApiUsecase: locator(),
          ),
        ),
      ],
      child: const _LoginScreen(),
    );
  }
}

//TODO TRANSLATION STATE

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    final MailLoginBloc mailLoginBloc = context.read<MailLoginBloc>();
    final ThirdAuthBloc thirdAuthBloc = context.read<ThirdAuthBloc>();

    final bool appType = Authentication.appType == "Android";

    final String logoPath =
        appType ? ImagePathes.googleLogo : ImagePathes.appleLogo;

    final String thirdPartyTitle = appType
        ? "Zarejestruj się przez Google"
        : "Zarejestruj się przez Apple";

    final void thirdPartyMethod = appType
        ? thirdAuthBloc.add(const ThirdAuthEvent.googleFirebase())
        : thirdAuthBloc.add(const ThirdAuthEvent.appleFirebase());

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MailLoginBloc, MailLoginState>(
          builder: (context, mailState) {
            return BlocBuilder<ThirdAuthBloc, ThirdAuthState>(
              builder: (context, loginState) {
                return MailForm(
                  loginForm: true,
                  emailChanged: (value) =>
                      mailLoginBloc.add(MailLoginEvent.emailChanged(value)),
                  navigationMethod: () => context.go(Routes.register),
                  passwordChanged: (value) =>
                      mailLoginBloc.add(MailLoginEvent.passwordChanged(value)),
                  changeViewButtonText: "Rejestracja",
                  submittedMethod: () =>
                      mailLoginBloc.add(const MailLoginEvent.login()),
                  submittedText: "Zaloguj się",
                  thirdPartyLogoPath: logoPath,
                  thirdPartyTitle: thirdPartyTitle,
                  thirdPartyMethod: () => thirdPartyMethod,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
