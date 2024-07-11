import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_nickname/data/datasource/change_nickname_datasource.dart';

abstract class ChangeNicknameRepository {
  Future<Either<Failure, void>> changeNickname({required String nickname});
}

@LazySingleton(as: ChangeNicknameRepository)
class ChangeNicknameRepositoryImpl implements ChangeNicknameRepository {
  final ChangeNicknameDatasource changeNicknameDatasource;

  ChangeNicknameRepositoryImpl({required this.changeNicknameDatasource});

  @override
  Future<Either<Failure, void>> changeNickname(
      {required String nickname}) async {
    try {
      final void result =
          await changeNicknameDatasource.changeNickname(nickname: nickname);

      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
