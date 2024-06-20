import 'package:go_router/go_router.dart';
import 'package:triply/core/addons/nav_shell.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/router/bloc/router_bloc.dart';
import 'package:triply/core/router/go_router.dart';
import 'package:triply/core/router/pages/authorized_scaffold.dart';

final StatefulShellRoute shellRoute = StatefulShellRoute.indexedStack(
  branches: shellBranch,
  parentNavigatorKey: rootNavigatorKey,
  builder: (context, __, navigationShell) {
    locator<RouterBloc>().add(const RouterEvent.change());
    NavigationShell.navigationShell = navigationShell;
    NavigationShell.globalContext ??= context;
    return AuthorizedScaffold(
      widget: navigationShell,
    );
  },
);

final List<StatefulShellBranch> shellBranch = [];
