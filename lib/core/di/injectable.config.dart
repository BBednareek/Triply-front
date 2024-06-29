// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:triply/core/network/factory/dio_factory.dart' as _i8;
import 'package:triply/core/router/bloc/router_bloc.dart' as _i4;
import 'package:triply/core/storage/secure_storage.dart' as _i5;
import 'package:triply/features/auth/auth_features/login/data/datasource/login_datasource.dart'
    as _i11;
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart'
    as _i12;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart'
    as _i13;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart'
    as _i14;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart'
    as _i15;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart'
    as _i16;
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart'
    as _i17;
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart'
    as _i6;
import 'package:triply/features/auth/cubit/auth_cubit.dart' as _i7;
import 'package:triply/features/settings/switch_theme/cubit/theme_cubit.dart'
    as _i3;
import 'package:triply/features/test/bloc/test_bloc.dart' as _i19;
import 'package:triply/features/test/datasource/datasource.dart' as _i9;
import 'package:triply/features/test/datasource/repository.dart' as _i10;
import 'package:triply/features/test/datasource/usecase.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ThemeCubit>(() => _i3.ThemeCubit());
    gh.singleton<_i4.RouterBloc>(() => _i4.RouterBloc());
    gh.lazySingleton<_i5.SecureStorageService>(
        () => _i5.SecureStorageService());
    gh.lazySingleton<_i6.InternetBloc>(() => _i6.InternetBloc());
    gh.lazySingleton<_i7.AuthCubit>(() =>
        _i7.AuthCubit(secureStorageService: gh<_i5.SecureStorageService>()));
    gh.lazySingleton<_i8.DioFactory>(
        () => _i8.DioFactoryImpl(authCubit: gh<_i7.AuthCubit>()));
    gh.lazySingleton<_i9.TestDatasource>(
        () => _i9.TestDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i10.TestRepository>(() =>
        _i10.TestRepositoryImpl(testDatasource: gh<_i9.TestDatasource>()));
    gh.lazySingleton<_i11.LoginDatasource>(
        () => _i11.LoginDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i12.LoginRepository>(() =>
        _i12.LoginRepositoryImpl(loginDatasource: gh<_i11.LoginDatasource>()));
    gh.lazySingleton<_i13.AppleApiUsecase>(() =>
        _i13.AppleApiUsecase(loginRepository: gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i14.AppleFirebaseUsecase>(() =>
        _i14.AppleFirebaseUsecase(loginRepository: gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i15.GoogleApiUsecase>(() =>
        _i15.GoogleApiUsecase(loginRepository: gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i16.GoogleFirebaseUsecase>(() =>
        _i16.GoogleFirebaseUsecase(
            loginRepository: gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i17.MailApiUsecase>(
        () => _i17.MailApiUsecase(loginRepository: gh<_i12.LoginRepository>()));
    gh.lazySingleton<_i18.Usecase>(
        () => _i18.Usecase(testRepository: gh<_i10.TestRepository>()));
    gh.lazySingleton<_i19.TestBloc>(
        () => _i19.TestBloc(usecase: gh<_i18.Usecase>()));
    return this;
  }
}
