import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/constants/secure_types.dart';
import 'package:triply/core/storage/secure_storage.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final SecureStorageService secureStorageService;

  AuthCubit({required this.secureStorageService}) : super(const _Loading());

  Future<void> login({required String userId}) async {
    await secureStorageService
        .writeSecureData(SecureItem(Secures.userId, userId));

    emit(const _Authorized());
  }

  Future<Either<void, String?>> session() async {
    final result =
        await secureStorageService.readSecureData(Secures.accessToken);
    if (result != null && result != "") {
      emit(const _Authorized());
      return right(result);
    } else {
      emit(const _Unauthorized());
      return left(null);
    }
  }

  Future<void> logout() async {
    emit(const _Loading());

    await secureStorageService.deleteSecureData(Secures.userId);

    emit(const _Unauthorized());
  }
}
