import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/auth.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';
import 'package:triply/core/theme/styles/login_widgets/third_auth_button.dart';
import 'package:triply/core/theme/styles/shared/input_field.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';
import 'package:triply/features/auth/auth_features/login/presentation/bloc/mail_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/blocs/3rd_auth_bloc/third_auth_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/error_box.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/grey_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MailLoginBloc(
                mailApiUsecase: locator(), forgotPasswordUsecase: locator())),
        BlocProvider(
          create: (context) => ThirdAuthBloc(
              loginAppleApiUsecase: locator(),
              loginGoogleApiUsecase: locator(),
              registerAppleApiUsecase: locator(),
              registerGoogleApiUsecase: locator(),
              loginAppleFirebaseUsecase: locator(),
              loginGoogleFirebaseUsecase: locator(),
              registerAppleFirebaseUsecase: locator(),
              registerGoogleFirebaseUsecase: locator()),
        )
      ],
      child: const _LoginScreen(),
    );
  }
}

// TODO Translation

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isAndroid = Authentication.appType == "Android";

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MailLoginBloc, MailLoginState>(
          builder: (context, mailState) {
            return BlocBuilder<ThirdAuthBloc, ThirdAuthState>(
              builder: (context, thirdState) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      GreyContainer(
                        buttonAvailable: true,
                        buttonTitle: "Rejestracja",
                        navigationMethod: () => context.go(Routes.register),
                      ),
                      const SizedBox(height: 10),
                      InputFieldWidget(
                        width: width * .8,
                        isObscured: false,
                        onChanged: (value) => context
                            .read<MailLoginBloc>()
                            .add(MailLoginEvent.emailChanged(email: value)),
                        title: "Wprowadź e-mail",
                      ),
                      ShowErrorMessage(
                        showMessage: mailState.errorMessage.isNotEmpty,
                        errorMessage: mailState.errorMessage,
                      ),
                      const SizedBox(height: 20),
                      InputFieldWidget(
                        width: width * .8,
                        isObscured: true,
                        onChanged: (value) => context.read<MailLoginBloc>().add(
                            MailLoginEvent.passwordChanged(password: value)),
                        title: "Wprowadź hasło",
                      ),
                      const SizedBox(height: 20),
                      LoginButton(
                        buttonTitle: "Zaloguj",
                        onPressed: () => context
                            .read<MailLoginBloc>()
                            .add(const MailLoginEvent.login()),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () => context.push(Routes.forgotPassword,
                            extra: context.read<MailLoginBloc>()),
                        child: Text("Zapomniałem hasła",
                            style: context.textStyle(fontSize16W500grey)),
                      ),
                      Padding(
                        padding: Paddings.bottom40,
                        child: Column(
                          children: [
                            /// [Only for iOS Devices]
                            if (!isAndroid)
                              ThirdAuthButton(
                                buttonTitle: "Zaloguj się przez Apple",
                                logoPath: ImagePathes.appleLogo,
                                onPressed: () => context
                                    .read<ThirdAuthBloc>()
                                    .add(const ThirdAuthEvent.appleFirebase()),
                              ),
                            const SizedBox(height: 20),
                            ThirdAuthButton(
                              buttonTitle: "Zaloguj się przez Google",
                              logoPath: ImagePathes.googleLogo,
                              onPressed: () => context
                                  .read<ThirdAuthBloc>()
                                  .add(const ThirdAuthEvent.googleFirebase()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
