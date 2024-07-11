import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_api_usecase.dart';
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_api_usecase.dart';
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

part 'third_auth_bloc.freezed.dart';
part 'third_auth_event.dart';
part 'third_auth_state.dart';

class ThirdAuthBloc extends Bloc<ThirdAuthEvent, ThirdAuthState> {
  final LoginAppleApiUsecase loginAppleApiUsecase;
  final LoginGoogleApiUsecase loginGoogleApiUsecase;

  final RegisterAppleApiUsecase registerAppleApiUsecase;
  final RegisterGoogleApiUsecase registerGoogleApiUsecase;

  final LoginAppleFirebaseUsecase loginAppleFirebaseUsecase;
  final LoginGoogleFirebaseUsecase loginGoogleFirebaseUsecase;

  final RegisterAppleFirebaseUsecase registerAppleFirebaseUsecase;
  final RegisterGoogleFirebaseUsecase registerGoogleFirebaseUsecase;

  ThirdAuthBloc({
    required this.loginAppleApiUsecase,
    required this.loginGoogleApiUsecase,
    required this.registerAppleApiUsecase,
    required this.registerGoogleApiUsecase,
    required this.loginAppleFirebaseUsecase,
    required this.loginGoogleFirebaseUsecase,
    required this.registerAppleFirebaseUsecase,
    required this.registerGoogleFirebaseUsecase,
  }) : super(const _Initial()) {
    on<_GoogleApi>(_googleApi);
    on<_AppleApi>(_appleApi);
    on<_GoogleFirebase>(_googleFirebase);
    on<_AppleFirebase>(_appleFirebase);
  }

  _googleApi(_GoogleApi event, Emitter<ThirdAuthState> emit) async {
    final String accessToken = event.user.jwtToken;

    final Either<Failure, LoginResultEntity> result =
        await loginGoogleApiUsecase.call(accessToken: accessToken);

    result.fold((l) => emit(_Failure(l.message)), (r) async {
      locator<AuthCubit>().login(
        userId: r.userId,
        accessToken: r.accessToken,
        loginType: "Google",
      );
      emit(const _Success());
    });
  }

  _googleFirebase(_GoogleFirebase event, Emitter<ThirdAuthState> emit) async {
    emit(const _Loading());
    final Either<Failure, FirebaseUserEntity> result =
        await loginGoogleFirebaseUsecase.call();

    result.fold(
      (l) => emit(_Failure(l.message)),
      (r) => add(_GoogleApi(user: r)),
    );
  }

  _appleApi(_AppleApi event, Emitter<ThirdAuthState> emit) async {
    final AppleRequestEntity request =
        AppleRequestEntity.createByFirebaseToLogin(event.user);

    final Either<Failure, LoginResultEntity> result =
        await loginAppleApiUsecase.call(request: request);

    result.fold((l) => emit(_Failure(l.message)), (r) async {
      locator<AuthCubit>().login(
        userId: r.userId,
        accessToken: r.accessToken,
        loginType: "Apple",
      );
      emit(const _Success());
    });
  }

  _appleFirebase(_AppleFirebase event, Emitter<ThirdAuthState> emit) async {
    emit(const _Loading());
    final Either<Failure, FirebaseUserEntity> result =
        await loginAppleFirebaseUsecase.call();

    result.fold(
      (l) => emit(_Failure(l.message)),
      (r) => add(_AppleApi(user: r)),
    );
  }
}
