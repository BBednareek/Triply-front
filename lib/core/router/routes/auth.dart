import 'package:go_router/go_router.dart';
import 'package:triply/features/auth/loading/loader.dart';
import 'package:triply/features/login.dart';
import 'package:triply/features/register.dart';

final List<RouteBase> authRoutes = [
  GoRoute(path: '/loading', builder: (_, __) => const Loader()),
  GoRoute(
      path: '/login',
      builder: (_, __) => const Login(),
      routes: const <GoRoute>[
        /// [Implement Forgot Password screen]
      ]),
  GoRoute(
      path: '/register',
      builder: (_, __) => const Register(),
      routes: const <GoRoute>[
        /// [Implement Register form screen]
      ]),
];
