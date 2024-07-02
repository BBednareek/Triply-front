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
    as _i13;
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart'
    as _i14;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart'
    as _i15;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart'
    as _i16;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart'
    as _i17;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart'
    as _i18;
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart'
    as _i19;
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart'
    as _i6;
import 'package:triply/features/auth/auth_features/register/data/datasource/register_datasource.dart'
    as _i10;
import 'package:triply/features/auth/auth_features/register/data/repository/register_repository.dart'
    as _i11;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_api_usecase.dart'
    as _i21;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_firebase_usecase.dart'
    as _i22;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_api_usecase.dart'
    as _i23;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_firebase_usecase.dart'
    as _i24;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_mail_api_usecase.dart'
    as _i25;
import 'package:triply/features/auth/cubit/auth_cubit.dart' as _i7;
import 'package:triply/features/settings/switch_theme/cubit/theme_cubit.dart'
    as _i3;
import 'package:triply/features/test/bloc/test_bloc.dart' as _i26;
import 'package:triply/features/test/datasource/datasource.dart' as _i9;
import 'package:triply/features/test/datasource/repository.dart' as _i12;
import 'package:triply/features/test/datasource/usecase.dart' as _i20;

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
    gh.lazySingleton<_i10.RegisterDatasource>(
        () => _i10.RegisterDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i11.RegisterRepository>(() => _i11.RegisterRepositoryImpl(
        registerDatasource: gh<_i10.RegisterDatasource>()));
    gh.lazySingleton<_i12.TestRepository>(() =>
        _i12.TestRepositoryImpl(testDatasource: gh<_i9.TestDatasource>()));
    gh.lazySingleton<_i13.LoginDatasource>(
        () => _i13.LoginDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i14.LoginRepository>(() =>
        _i14.LoginRepositoryImpl(loginDatasource: gh<_i13.LoginDatasource>()));
    gh.lazySingleton<_i15.LoginAppleApiUsecase>(() =>
        _i15.LoginAppleApiUsecase(loginRepository: gh<_i14.LoginRepository>()));
    gh.lazySingleton<_i16.LoginAppleFirebaseUsecase>(() =>
        _i16.LoginAppleFirebaseUsecase(
            loginRepository: gh<_i14.LoginRepository>()));
    gh.lazySingleton<_i17.LoginGoogleApiUsecase>(() =>
        _i17.LoginGoogleApiUsecase(
            loginRepository: gh<_i14.LoginRepository>()));
    gh.lazySingleton<_i18.LoginGoogleFirebaseUsecase>(() =>
        _i18.LoginGoogleFirebaseUsecase(
            loginRepository: gh<_i14.LoginRepository>()));
    gh.lazySingleton<_i19.LoginMailApiUsecase>(() =>
        _i19.LoginMailApiUsecase(loginRepository: gh<_i14.LoginRepository>()));
    gh.lazySingleton<_i20.Usecase>(
        () => _i20.Usecase(testRepository: gh<_i12.TestRepository>()));
    gh.lazySingleton<_i21.RegisterAppleApiUsecase>(() =>
        _i21.RegisterAppleApiUsecase(
            registerRepository: gh<_i11.RegisterRepository>()));
    gh.lazySingleton<_i22.RegisterAppleFirebaseUsecase>(() =>
        _i22.RegisterAppleFirebaseUsecase(
            registerRepository: gh<_i11.RegisterRepository>()));
    gh.lazySingleton<_i23.RegisterGoogleApiUsecase>(() =>
        _i23.RegisterGoogleApiUsecase(
            registerRepository: gh<_i11.RegisterRepository>()));
    gh.lazySingleton<_i24.RegisterGoogleFirebaseUsecase>(() =>
        _i24.RegisterGoogleFirebaseUsecase(
            registerRepository: gh<_i11.RegisterRepository>()));
    gh.lazySingleton<_i25.RegisterMailApiUsecase>(() =>
        _i25.RegisterMailApiUsecase(
            registerRepository: gh<_i11.RegisterRepository>()));
    gh.lazySingleton<_i26.TestBloc>(
        () => _i26.TestBloc(usecase: gh<_i20.Usecase>()));
    return this;
  }
}
