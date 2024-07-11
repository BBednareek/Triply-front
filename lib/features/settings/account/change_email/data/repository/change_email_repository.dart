import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_email/data/datasource/change_email_datasource.dart';
import 'package:triply/features/settings/account/change_email/domain/entities/change_email_entity.dart';

abstract class ChangeEmailRepository {
  Future<Either<Failure, void>> changeEmail(
      {required ChangeEmailEntity entity});
}

@LazySingleton(as: ChangeEmailRepository)
class ChangeEmailRepositoryImpl implements ChangeEmailRepository {
  final ChangeEmailDatasource changeEmailDatasource;

  ChangeEmailRepositoryImpl({required this.changeEmailDatasource});

  @override
  Future<Either<Failure, void>> changeEmail(
      {required ChangeEmailEntity entity}) async {
    try {
      final void result =
          await changeEmailDatasource.changeEmail(entity: entity);

      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
