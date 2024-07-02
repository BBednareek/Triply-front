import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/register/data/repository/register_repository.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/request_register_entity.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/response_register_entity.dart';

@lazySingleton
class RegisterMailApiUsecase {
  final RegisterRepository registerRepository;

  RegisterMailApiUsecase({required this.registerRepository});

  Future<Either<Failure, ResponseRegisterEntity>> call(
          {required RequestMailRegisterEntity entity}) async =>
      registerRepository.mailRegister(entity: entity);
}
