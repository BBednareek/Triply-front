import 'package:go_router/go_router.dart';
import 'package:triply/features/auth/auth_features/loading/loader.dart';
import 'package:triply/features/auth/auth_features/login/presentation/pages/login_screen.dart';
import 'package:triply/features/auth/auth_features/register/presentation/bloc/mail_register_bloc.dart';
import 'package:triply/features/auth/auth_features/register/presentation/pages/details_form.dart';
import 'package:triply/features/auth/auth_features/register/presentation/pages/register_screen.dart';

final List<RouteBase> authRoutes = [
  GoRoute(path: '/loading', builder: (_, __) => const Loader()),
  GoRoute(
      path: '/login',
      builder: (_, __) => const LoginScreen(),
      routes: const <GoRoute>[
        /// [Implement Forgot Password screen]
      ]),
  GoRoute(
      path: '/register',
      builder: (_, __) => const RegisterScreen(),
      routes: <GoRoute>[
        GoRoute(
          path: 'form',
          builder: (_, state) =>
              DetailsForm(mailRegisterBloc: state.extra as MailRegisterBloc),
        )

        /// [Implement OTP Screen]
      ]),
];
