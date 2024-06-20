import 'dart:io';

import 'package:dio/dio.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

class AuthInterceptors extends Interceptor {
  final AuthCubit authCubit;

  AuthInterceptors({required this.authCubit});

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    authCubit.state.whenOrNull(authorized: () async {
      final int? statusCode = response.statusCode;
      if (statusCode == null || statusCode == HttpStatus.unauthorized) {
        await authCubit.logout();
      }
    });
    return handler.next(response);
  }
}
