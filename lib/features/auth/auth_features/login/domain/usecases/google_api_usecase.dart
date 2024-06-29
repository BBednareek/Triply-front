import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart';

@lazySingleton
class GoogleApiUsecase {
  final LoginRepository loginRepository;

  GoogleApiUsecase({required this.loginRepository});

  Future<Either<Failure, void>> call(String accessToken) async =>
      await loginRepository.googleWithApi(accessToken);
}
