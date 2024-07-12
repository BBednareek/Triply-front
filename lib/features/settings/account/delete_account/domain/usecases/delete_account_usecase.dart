import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/delete_account/data/repository/delete_account_repository.dart';

@lazySingleton
class DeleteAccountUsecase {
  final DeleteAccountRepository deleteAccountRepository;

  DeleteAccountUsecase({required this.deleteAccountRepository});

  Future<Either<Failure, void>> call({required String password}) async =>
      await deleteAccountRepository.deleteAccount(password: password);
}
