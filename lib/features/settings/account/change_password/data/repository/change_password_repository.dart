import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_password/data/datasource/change_password_datasource.dart';
import 'package:triply/features/settings/account/change_password/domain/entities/change_password_entity.dart';

abstract class ChangePasswordRepository {
  Future<Either<Failure, void>> changePassword(
      {required ChangePasswordEntity entity});
}

@LazySingleton(as: ChangePasswordRepository)
class ChangePasswordRepositoryImpl implements ChangePasswordRepository {
  final ChangePasswordDatasource changePasswordDatasource;

  ChangePasswordRepositoryImpl({required this.changePasswordDatasource});

  @override
  Future<Either<Failure, void>> changePassword(
      {required ChangePasswordEntity entity}) async {
    try {
      final void result =
          await changePasswordDatasource.changePassword(entity: entity);

      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
