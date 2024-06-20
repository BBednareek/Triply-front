import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/router/redirect.dart';
import 'package:triply/core/router/routes/auth.dart';
import 'package:triply/core/router/routes/shell.dart';

final rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "rootNavigatorKey");

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
);
