import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart';
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';
import 'package:triply/features/auth/cubit/auth_cubit.dart';

part 'third_auth_bloc.freezed.dart';
part 'third_auth_event.dart';
part 'third_auth_state.dart';

class ThirdAuthBloc extends Bloc<ThirdAuthEvent, ThirdAuthState> {
  final AppleApiUsecase appleApiUsecase;
  final GoogleApiUsecase googleApiUsecase;

  final AppleFirebaseUsecase appleFirebaseUsecase;
  final GoogleFirebaseUsecase googleFirebaseUsecase;

  ThirdAuthBloc({
    required this.appleApiUsecase,
    required this.appleFirebaseUsecase,
    required this.googleApiUsecase,
    required this.googleFirebaseUsecase,
  }) : super(const _Initial()) {
    on<_GoogleApi>(_googleApi);
    on<_AppleApi>(_appleApi);
    on<_GoogleFirebase>(_googleFirebase);
    on<_AppleFirebase>(_appleFirebase);
  }

  _googleApi(_GoogleApi event, Emitter<ThirdAuthState> emit) async {
    final String accessToken = event.user.jwtToken;
    final Either<Failure, void> result = await googleApiUsecase.call();

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
    final Either<Failure, void> result = await googleFirebaseUsecase.call();

    result.fold(
      (l) => emit(_Failure(l.message)),
      (r) => add(_GoogleApi(r)),
    );
  }

  _appleApi(_AppleApi event, Emitter<ThirdAuthState> emit) async {
    final String accessToken = event.user.jwtToken;
    final Either<Failure, void> result = await appleApiUsecase.call();

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
    final Either<Failure, void> result = await appleFirebaseUsecase.call();

    result.fold(
      (l) => emit(_Failure(l.message)),
      (r) => add(_AppleApi(r)),
    );
  }
}
