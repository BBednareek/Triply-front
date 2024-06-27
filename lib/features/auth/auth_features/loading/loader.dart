import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/router/go_router.dart';
import 'package:triply/features/test/bloc/test_bloc.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<TestBloc, TestState>(
          listener: (context, state) {
            state.when(
              loading: () {},
              loaded: () => goRouter.refresh(),
              error: (errorMessage) {
                log(errorMessage);
                return;
              },
            );
          },
          child: const LoadingImage(),
        ),
      ),
    );
  }
}

class LoadingImage extends StatefulWidget {
  const LoadingImage({super.key});

  @override
  State<LoadingImage> createState() => _LoadingImageState();
}

class _LoadingImageState extends State<LoadingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: .5, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(ImagePathes.logo),
    );
  }
}
