import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/request_register_entity.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/response_register_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';

abstract class RegisterDatasource {
  Future<bool> verifyEmail({required String email});
  Future<ResponseRegisterEntity> registerByEmail(
      {required RequestMailRegisterEntity entity});
  Future<ResponseRegisterEntity> registerByApple(
      {required AppleRequestEntity request});
  Future<ResponseRegisterEntity> registerByGoogle(
      {required String accessToken});
}

@LazySingleton(as: RegisterDatasource)
class RegisterDatasourceImpl implements RegisterDatasource {
  final DioFactory dioFactory;

  RegisterDatasourceImpl({required this.dioFactory});

  @override
  Future<ResponseRegisterEntity> registerByApple(
      {required AppleRequestEntity request}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: request.registerToJson());
      return result['data'];
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<ResponseRegisterEntity> registerByEmail(
      {required RequestMailRegisterEntity entity}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: entity.toJson());
      return result['data'];
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<ResponseRegisterEntity> registerByGoogle(
      {required String accessToken}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: {"accessToken": accessToken});
      return result['data'];
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<bool> verifyEmail({required String email}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: {"email": email});
      return result['success'];
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }
}
