import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/router/pages/error.dart';
import 'package:triply/core/router/redirect.dart';
import 'package:triply/core/router/routes/auth.dart';
import 'package:triply/core/router/routes/shell.dart';

final rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "rootNavigatorKey");

final dashboardNavKey =
    GlobalKey<NavigatorState>(debugLabel: "dashboardNavigatorKey");

final settingsNavKey =
    GlobalKey<NavigatorState>(debugLabel: "settingsNavigatorKey");

final GoRouter goRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    redirectLimit: 999,
    redirect: (context, state) async => await redirect(context, state),
    routes: [
      ...authRoutes,
      shellRoute,
    ],
    errorBuilder: (_, __) => const Error());
