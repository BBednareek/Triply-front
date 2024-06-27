import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/interceptors/auth_interceptors.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

abstract class DioFactory {
  abstract Dio dio;
  abstract final AuthCubit authCubit;

  Dio getDio({String? url, Map<String, dynamic>? headers});

  Future<Map<String, dynamic>> get(
    String route, {
    Map<String, dynamic>? params,
  });
  Future<Map<String, dynamic>> post(
    String route, {
    Object? data,
  });
}

@LazySingleton(as: DioFactory)
class DioFactoryImpl implements DioFactory {
  @override
  final AuthCubit authCubit;
  @override
  late Dio dio = getDio();

  DioFactoryImpl({required this.authCubit});

  @override
  Dio getDio({String? url, Map<String, dynamic>? headers}) => Dio(BaseOptions(
      baseUrl: url ?? "",
      contentType: 'application/json',
      responseType: ResponseType.json,
      headers: headers,
      validateStatus: (int? status) =>
          status! >= HttpStatus.ok && status <= HttpStatus.imUsed))
    ..interceptors.addAll(
      [
        AuthInterceptors(authCubit: authCubit),
      ],
    );

  @override
  Future<Map<String, dynamic>> get(
    String route, {
    Map<String, dynamic>? params,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final Response<dynamic> result = await dio.get(
        route,
        queryParameters: params,
        options: Options(headers: headers),
      );

      return result.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> post(String route, {Object? data}) async {
    try {
      final Response<dynamic> result = await dio.get(
        route,
        data: data,
      );

      return result.data;
    } catch (e) {
      rethrow;
    }
  }
}
