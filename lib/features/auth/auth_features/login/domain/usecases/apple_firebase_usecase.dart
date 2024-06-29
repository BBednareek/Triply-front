import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';

@lazySingleton
class AppleFirebaseUsecase {
  final LoginRepository loginRepository;

  AppleFirebaseUsecase({required this.loginRepository});

  Future<Either<Failure, void>> call() async =>
      await loginRepository.appleWithFirebase();
}
