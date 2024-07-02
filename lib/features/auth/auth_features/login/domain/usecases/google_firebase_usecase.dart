import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';

@lazySingleton
class GoogleFirebaseUsecase {
  final LoginRepository loginRepository;

  GoogleFirebaseUsecase({required this.loginRepository});

  Future<Either<Failure, FirebaseUserEntity>> call() async =>
      await loginRepository.googleWithFirebase();
}
