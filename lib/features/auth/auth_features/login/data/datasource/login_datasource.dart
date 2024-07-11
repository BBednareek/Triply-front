import 'package:injectable/injectable.dart';
import 'package:triply/core/network/factory/dio_factory.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';

abstract class LoginDatasource {
  Future<LoginResultEntity> mailWithApi({required LoginMailEntity entity});
  Future<LoginResultEntity> googleWithApi({required String accessToken});
  Future<LoginResultEntity> appleWithApi({required AppleRequestEntity request});
  Future<bool> requestResetPassword({required String email});
}

@LazySingleton(as: LoginDatasource)
class LoginDatasourceImpl implements LoginDatasource {
  final DioFactory dioFactory;

  LoginDatasourceImpl({required this.dioFactory});

  @override
  Future<LoginResultEntity> appleWithApi(
      {required AppleRequestEntity request}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: request.loginToJson());
      return LoginResultEntity.fromJson(result);
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<LoginResultEntity> googleWithApi({required String accessToken}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: {"accessToken": accessToken});

      return LoginResultEntity.fromJson(result);
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<LoginResultEntity> mailWithApi(
      {required LoginMailEntity entity}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: entity.toJson());
      return LoginResultEntity.fromJson(result);
    } catch (e, st) {
      throw dioFactory.handleException(e, stackTrace: st);
    }
  }

  @override
  Future<bool> requestResetPassword({required String email}) async {
    try {
      final Map<String, dynamic> result =
          await dioFactory.post("", data: {"email": email});

      return result['success'];
    } catch (e) {
      throw dioFactory.handleException(e);
    }
  }
}
