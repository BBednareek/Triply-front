import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "rootNavigatorKey");

final GoRouter goRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [],
);
