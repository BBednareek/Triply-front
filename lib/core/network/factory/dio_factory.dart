import 'package:dio/dio.dart';

abstract class DioFactory {
  abstract Dio dio;

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

class DioFactoryImpl implements DioFactory {
  @override
  late Dio dio = getDio();

  @override
  Dio getDio({String? url, Map<String, dynamic>? headers}) => Dio(BaseOptions(
        baseUrl: url ?? "",
        contentType: 'application/json',
        responseType: ResponseType.json,
        headers: headers,
      ));

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
