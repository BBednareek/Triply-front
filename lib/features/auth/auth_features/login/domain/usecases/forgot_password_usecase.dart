import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';

@lazySingleton
class ForgotPasswordUsecase {
  final LoginRepository loginRepository;

  ForgotPasswordUsecase({required this.loginRepository});

  Future<Either<Failure, bool>> call({required String email}) async =>
      loginRepository.requestResetPassword(email: email);
}
