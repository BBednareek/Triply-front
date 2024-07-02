import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/register/data/repository/register_repository.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';

@lazySingleton
class RegisterAppleFirebaseUsecase {
  final RegisterRepository registerRepository;

  RegisterAppleFirebaseUsecase({required this.registerRepository});

  Future<Either<Failure, FirebaseUserEntity>> call() async =>
      registerRepository.signInApple();
}
