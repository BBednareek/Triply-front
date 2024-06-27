import 'dart:io';

import 'package:dartz/dartz.dart';
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

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final Either<void, String?> session = await authCubit.session();

    session.fold((error) async {
      await authCubit.logout();
      return;
    }, (accessToken) async {
      options.headers['Authorization'] = 'Bearer $accessToken';
    });
    return handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    authCubit.state.whenOrNull(authorized: () async {});
    return handler.reject(err);
  }
}
