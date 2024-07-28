import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/addons/disable_glow_scroll.dart';
import 'package:triply/core/addons/main_addon.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/router/go_router.dart';
import 'package:triply/core/theme/theme.dart';
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';
import 'package:triply/features/settings/switch_theme/cubit/theme_cubit.dart';
import 'package:triply/features/settings/switch_theme/domain/entities/theme_entity.dart';
import 'package:triply/features/test/bloc/test_bloc.dart';

Future<void> main() async {
  await MainMethods.mainAddon();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
            value: locator<TestBloc>()..add(const TestEvent.get())),
        BlocProvider.value(value: locator<AuthCubit>()),
        BlocProvider.value(value: locator<ThemeCubit>()),
        BlocProvider.value(value: locator<InternetBloc>()),
      ],
      child: const Triply(),
    ),
  );
}

class Triply extends StatelessWidget {
  const Triply({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => ChuckerFlutter.showChuckerScreen(),
      child: BlocBuilder<ThemeCubit, ThemeEntity>(
        builder: (context, state) => MaterialApp.router(
          routerConfig: goRouter,
          title: "Triply",
          themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          builder: (appContext, child) {
            return ScrollConfiguration(
              behavior: DisableGlowScroll(),
              child: MultiBlocListener(
                listeners: [
                  BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) => goRouter.refresh()),
                  BlocListener<InternetBloc, InternetState>(
                    listener: (context, state) {
                      if (state.noInternet && state.lastRoute == null) {
                        goRouter.refresh();
                      }
                    },
                  ),
                ],
                child: child!,
              ),
            );
          },
        ),
      ),
    );
  }
}
