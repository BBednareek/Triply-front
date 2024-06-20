import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/addons/disable_glow_scroll.dart';
import 'package:triply/core/addons/main_addon.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/router/go_router.dart';
import 'package:triply/core/theme/theme.dart';
import 'package:triply/features/switch_theme/domain/entities/theme_entity.dart';
import 'package:triply/features/switch_theme/presentation/cubit/theme_cubit.dart';

Future<void> main() async {
  mainAddon();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<ThemeCubit>(),
        ),
      ],
      child: const Triply(),
    ),
  );
}

class Triply extends StatelessWidget {
  const Triply({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeEntity>(
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
            child: child!,
          );
        },
      ),
    );
  }
}
