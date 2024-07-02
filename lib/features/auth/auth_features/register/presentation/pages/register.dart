import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/features/auth/auth_features/register/presentation/bloc/mail_register_bloc.dart';
import 'package:triply/features/auth/auth_features/shared/blocs/authentication_blocs/3rd_auth_bloc/third_auth_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
        BlocProvider(create: (context) => MailRegisterBloc())
      ],
      child: const _RegisterScreen(),
    );
  }
}

class _RegisterScreen extends StatelessWidget {
  const _RegisterScreen();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
