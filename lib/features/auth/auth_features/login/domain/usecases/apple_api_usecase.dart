import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';

@lazySingleton
class LoginAppleApiUsecase {
  final LoginRepository loginRepository;

  LoginAppleApiUsecase({required this.loginRepository});

  Future<Either<Failure, LoginResultEntity>> call(
          AppleRequestEntity request) async =>
      await loginRepository.appleWithApi(request);
}
