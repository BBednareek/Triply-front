import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/auth.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/features/auth/auth_features/register/presentation/bloc/mail_register_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/blocs/3rd_auth_bloc/third_auth_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/mail_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThirdAuthBloc(
            registerAppleApiUsecase: locator(),
            registerAppleFirebaseUsecase: locator(),
            registerGoogleApiUsecase: locator(),
            registerGoogleFirebaseUsecase: locator(),
            loginAppleApiUsecase: locator(),
            loginAppleFirebaseUsecase: locator(),
            loginGoogleApiUsecase: locator(),
            loginGoogleFirebaseUsecase: locator(),
          ),
        ),
        BlocProvider(
            create: (context) => MailRegisterBloc(
                registerMailApiUsecase: locator(),
                loginMailApiUsecase: locator()))
      ],
      child: const _RegisterScreen(),
    );
  }
}

class _RegisterScreen extends StatelessWidget {
  const _RegisterScreen();

  @override
  Widget build(BuildContext context) {
    final MailRegisterBloc mailRegisterBloc = context.read<MailRegisterBloc>();
    final ThirdAuthBloc thirdAuthBloc = context.read<ThirdAuthBloc>();

    final bool appType = Authentication.appType == "Android";

    final String thirdPartyTitle = appType
        ? "Zarejestruj się przez Google"
        : "Zarejestruj się przez Apple";

    final String thirdPartyLogoPath =
        appType ? "assets/img/google.svg" : "assets/img/apple.svg";

    return Scaffold(
      body: SafeArea(
        child: MailForm(
          loginForm: false,
          emailChanged: (value) =>
              mailRegisterBloc.add(MailRegisterEvent.emailChanged(value)),
          passwordChanged: (value) =>
              mailRegisterBloc.add(MailRegisterEvent.passwordChanged(value)),
          navigationMethod: () => context.go(Routes.login),
          changeViewButtonText: "Logowanie",
          //TODO next screen
          submittedMethod: () => context.go("Next form"),
          submittedText: "Przejdź dalej",
          thirdPartyLogoPath: thirdPartyLogoPath,
          thirdPartyTitle: thirdPartyTitle,
          thirdPartyMethod: appType
              ? () => thirdAuthBloc.add(const ThirdAuthEvent.googleFirebase())
              : () => thirdAuthBloc.add(const ThirdAuthEvent.appleFirebase()),
        ),
      ),
    );
  }
}
