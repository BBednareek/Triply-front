import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';

@lazySingleton
class LoginMailApiUsecase {
  final LoginRepository loginRepository;

  LoginMailApiUsecase({required this.loginRepository});

  Future<Either<Failure, LoginResultEntity>> call(
          {required LoginMailEntity entity}) async =>
      await loginRepository.mailWithApi(entity: entity);
}
