import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/auth.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';
import 'package:triply/core/theme/styles/login_widgets/third_auth_button.dart';
import 'package:triply/core/theme/styles/shared/input_field.dart';
import 'package:triply/features/auth/auth_features/register/presentation/bloc/mail_register_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/blocs/3rd_auth_bloc/third_auth_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/error_box.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/grey_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MailRegisterBloc(
                registerMailApiUsecase: locator(),
                loginMailApiUsecase: locator())),
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
      child: const _RegisterScreen(),
    );
  }
}

class _RegisterScreen extends StatelessWidget {
  const _RegisterScreen();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isAndroid = Authentication.appType == "Android";

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MailRegisterBloc, MailRegisterState>(
          builder: (context, mailState) {
            bool canProcess = mailState.emailError.isEmpty &&
                mailState.passwordError.isEmpty &&
                mailState.email.value.isNotEmpty &&
                mailState.password.value.isNotEmpty;
            return BlocBuilder<ThirdAuthBloc, ThirdAuthState>(
              builder: (context, thirdState) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      GreyContainer(
                        buttonAvailable: true,
                        buttonTitle: "Logowanie",
                        navigationMethod: () => context.go(Routes.login),
                      ),
                      const SizedBox(height: 10),
                      InputFieldWidget(
                        width: width * .8,
                        isObscured: false,
                        onChanged: (value) => context
                            .read<MailRegisterBloc>()
                            .add(MailRegisterEvent.emailChanged(value)),
                        title: "Wprowadź e-mail",
                      ),
                      const SizedBox(height: 5),
                      ShowErrorMessage(
                        showMessage: mailState.emailError.isNotEmpty,
                        errorMessage: mailState.emailError,
                      ),
                      const SizedBox(height: 20),
                      InputFieldWidget(
                        width: width * .8,
                        isObscured: true,
                        onChanged: (value) => context
                            .read<MailRegisterBloc>()
                            .add(MailRegisterEvent.passwordChanged(value)),
                        title: "Wprowadź hasło",
                      ),
                      const SizedBox(height: 5),
                      ShowErrorMessage(
                        showMessage: mailState.passwordError.isNotEmpty,
                        errorMessage: mailState.passwordError,
                      ),
                      const SizedBox(height: 20),
                      LoginButton(
                        buttonTitle: "Przejdź dalej",
                        onPressed: canProcess
                            ? () => context.go(
                                  Routes.registerForm,
                                  extra: context.read<MailRegisterBloc>(),
                                )
                            : () {},
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: Paddings.bottom40,
                        child: Column(
                          children: [
                            /// [Only for iOS Devices]
                            if (!isAndroid)
                              ThirdAuthButton(
                                buttonTitle: "Zarejestruj się przez Apple",
                                logoPath: ImagePathes.appleLogo,
                                onPressed: () => context
                                    .read<ThirdAuthBloc>()
                                    .add(const ThirdAuthEvent.appleFirebase()),
                              ),
                            const SizedBox(height: 20),
                            ThirdAuthButton(
                              buttonTitle: "Zarejestruj się przez Google",
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
