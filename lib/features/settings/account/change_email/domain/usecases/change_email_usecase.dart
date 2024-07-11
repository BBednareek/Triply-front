import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/settings/account/change_email/data/repository/change_email_repository.dart';
import 'package:triply/features/settings/account/change_email/domain/entities/change_email_entity.dart';

@lazySingleton
class ChangeEmailUsecase {
  final ChangeEmailRepository changeEmailRepository;

  ChangeEmailUsecase({required this.changeEmailRepository});

  Future<Either<Failure, void>> call(
          {required ChangeEmailEntity entity}) async =>
      await changeEmailRepository.changeEmail(entity: entity);
}
