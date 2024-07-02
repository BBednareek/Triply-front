import 'package:go_router/go_router.dart';
import 'package:triply/features/auth/auth_features/loading/loader.dart';
import 'package:triply/features/auth/auth_features/login/presentation/pages/login.dart';

final List<RouteBase> authRoutes = [
  GoRoute(path: '/loading', builder: (_, __) => const Loader()),
  GoRoute(
      path: '/login',
      builder: (_, __) => const LoginScreen(),
      routes: const <GoRoute>[
        /// [Implement Forgot Password screen]
      ]),
  // GoRoute(
  //     path: '/register',
  //     builder: (_, __) => const Register(),
  //     routes: const <GoRoute>[
  //       /// [Implement Register form screen]
  //     ]),
];
