import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/delete_account/data/datasource/delete_account_datasource.dart';

abstract class DeleteAccountRepository {
  Future<Either<Failure, void>> deleteAccount({required String password});
}

@LazySingleton(as: DeleteAccountRepository)
class DeleteAccountRepositoryImpl implements DeleteAccountRepository {
  final DeleteAccountDatasource deleteAccountDatasource;

  DeleteAccountRepositoryImpl({required this.deleteAccountDatasource});

  @override
  Future<Either<Failure, void>> deleteAccount(
      {required String password}) async {
    try {
      final void result =
          await deleteAccountDatasource.deleteAccount(password: password);

      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
