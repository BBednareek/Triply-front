import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

Future<String?> redirect(BuildContext context, GoRouterState state) async {
  final String? fullPath = state.fullPath;

  final authCubit = locator<AuthCubit>();
  return authCubit.state.when(
    loading: () => Routes.loading,
    unAuthorized: () async {
      if (!(fullPath == Routes.login ||
              fullPath == Routes.register ||
              fullPath == Routes.registerForm ||
              fullPath == Routes.resetPassword) ||
          fullPath == Routes.loading) {
        return Routes.login;
      }
      return null;
    },
    authorized: () {
      if (fullPath == Routes.registerForm ||
          fullPath == Routes.login ||
          fullPath == Routes.loading) {
        return Routes.dashboard;
      }
      return null;
    },
  );
}
