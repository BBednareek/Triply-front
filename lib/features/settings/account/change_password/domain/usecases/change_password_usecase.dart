import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_password/data/repository/change_password_repository.dart';
import 'package:triply/features/settings/account/change_password/domain/entities/change_password_entity.dart';

@lazySingleton
class ChangePasswordUsecase {
  final ChangePasswordRepository changePasswordRepository;

  ChangePasswordUsecase({required this.changePasswordRepository});

  Future<Either<Failure, void>> call(
          {required ChangePasswordEntity entity}) async =>
      await changePasswordRepository.changePassword(entity: entity);
}
