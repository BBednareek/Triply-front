import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorizedScaffold extends StatelessWidget {
  const AuthorizedScaffold({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [],
      child: _AuthorizedScaffold(widget: widget),
    );
  }
}

class _AuthorizedScaffold extends StatelessWidget {
  const _AuthorizedScaffold({required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: widget),
    );
  }
}
