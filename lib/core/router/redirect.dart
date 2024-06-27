import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';
import 'package:triply/features/auth/no_internet/internet_bloc.dart';

Future<String?> redirect(BuildContext context, GoRouterState state) async {
  final String? fullPath = state.fullPath;

  final InternetBloc internetBloc = locator<InternetBloc>();
  final lastRoute = internetBloc.state.lastRoute;
  if (internetBloc.state.noInternet) {
    if (lastRoute == null || lastRoute.isEmpty) {
      internetBloc.add(InternetEvent.lastRoute(fullPath ?? Routes.login));
      return Routes.noInternet;
    }
    return null;
  }

  final AuthCubit authCubit = locator<AuthCubit>();
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
