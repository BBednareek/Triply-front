import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_nickname/data/repository/change_nickname_repository.dart';

@lazySingleton
class ChangeNicknameUsecase {
  final ChangeNicknameRepository changeNicknameRepository;

  ChangeNicknameUsecase({required this.changeNicknameRepository});

  Future<Either<Failure, void>> call({required String nickname}) async =>
      await changeNicknameRepository.changeNickname(nickname: nickname);
}
