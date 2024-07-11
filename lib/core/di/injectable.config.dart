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
    as _i15;
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart'
    as _i17;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart'
    as _i18;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart'
    as _i19;
import 'package:triply/features/auth/auth_features/login/domain/usecases/forgot_password_usecase.dart'
    as _i23;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart'
    as _i20;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart'
    as _i21;
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart'
    as _i22;
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart'
    as _i6;
import 'package:triply/features/auth/auth_features/register/data/datasource/register_datasource.dart'
    as _i11;
import 'package:triply/features/auth/auth_features/register/data/repository/register_repository.dart'
    as _i13;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_api_usecase.dart'
    as _i26;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_firebase_usecase.dart'
    as _i27;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_api_usecase.dart'
    as _i28;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_firebase_usecase.dart'
    as _i29;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_mail_api_usecase.dart'
    as _i30;
import 'package:triply/features/auth/cubit/auth_cubit.dart' as _i7;
import 'package:triply/features/settings/account/change_email/data/datasource/change_email_datasource.dart'
    as _i10;
import 'package:triply/features/settings/account/change_email/data/repository/change_email_repository.dart'
    as _i12;
import 'package:triply/features/settings/account/change_email/domain/usecases/change_email_usecase.dart'
    as _i24;
import 'package:triply/features/settings/account/change_nickname/data/datasource/change_nickname_datasource.dart'
    as _i16;
import 'package:triply/features/settings/account/change_nickname/data/repository/change_nickname_repository.dart'
    as _i31;
import 'package:triply/features/settings/account/change_nickname/domain/usecases/change_nickname_usecase.dart'
    as _i32;
import 'package:triply/features/settings/switch_theme/cubit/theme_cubit.dart'
    as _i3;
import 'package:triply/features/test/bloc/test_bloc.dart' as _i33;
import 'package:triply/features/test/datasource/datasource.dart' as _i9;
import 'package:triply/features/test/datasource/repository.dart' as _i14;
import 'package:triply/features/test/datasource/usecase.dart' as _i25;

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
    gh.lazySingleton<_i10.ChangeEmailDatasource>(
        () => _i10.ChangeEmailDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i11.RegisterDatasource>(
        () => _i11.RegisterDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i12.ChangeEmailRepository>(() =>
        _i12.ChangeEmailRepositoryImpl(
            changeEmailDatasource: gh<_i10.ChangeEmailDatasource>()));
    gh.lazySingleton<_i13.RegisterRepository>(() => _i13.RegisterRepositoryImpl(
        registerDatasource: gh<_i11.RegisterDatasource>()));
    gh.lazySingleton<_i14.TestRepository>(() =>
        _i14.TestRepositoryImpl(testDatasource: gh<_i9.TestDatasource>()));
    gh.lazySingleton<_i15.LoginDatasource>(
        () => _i15.LoginDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i16.ChangeNicknameDatasource>(() =>
        _i16.ChangeNicknameDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i17.LoginRepository>(() =>
        _i17.LoginRepositoryImpl(loginDatasource: gh<_i15.LoginDatasource>()));
    gh.lazySingleton<_i18.LoginAppleApiUsecase>(() =>
        _i18.LoginAppleApiUsecase(loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i19.LoginAppleFirebaseUsecase>(() =>
        _i19.LoginAppleFirebaseUsecase(
            loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i20.LoginGoogleApiUsecase>(() =>
        _i20.LoginGoogleApiUsecase(
            loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i21.LoginGoogleFirebaseUsecase>(() =>
        _i21.LoginGoogleFirebaseUsecase(
            loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i22.LoginMailApiUsecase>(() =>
        _i22.LoginMailApiUsecase(loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i23.ForgotPasswordUsecase>(() =>
        _i23.ForgotPasswordUsecase(
            loginRepository: gh<_i17.LoginRepository>()));
    gh.lazySingleton<_i24.ChangeEmailUsecase>(() => _i24.ChangeEmailUsecase(
        changeEmailRepository: gh<_i12.ChangeEmailRepository>()));
    gh.lazySingleton<_i25.Usecase>(
        () => _i25.Usecase(testRepository: gh<_i14.TestRepository>()));
    gh.lazySingleton<_i26.RegisterAppleApiUsecase>(() =>
        _i26.RegisterAppleApiUsecase(
            registerRepository: gh<_i13.RegisterRepository>()));
    gh.lazySingleton<_i27.RegisterAppleFirebaseUsecase>(() =>
        _i27.RegisterAppleFirebaseUsecase(
            registerRepository: gh<_i13.RegisterRepository>()));
    gh.lazySingleton<_i28.RegisterGoogleApiUsecase>(() =>
        _i28.RegisterGoogleApiUsecase(
            registerRepository: gh<_i13.RegisterRepository>()));
    gh.lazySingleton<_i29.RegisterGoogleFirebaseUsecase>(() =>
        _i29.RegisterGoogleFirebaseUsecase(
            registerRepository: gh<_i13.RegisterRepository>()));
    gh.lazySingleton<_i30.RegisterMailApiUsecase>(() =>
        _i30.RegisterMailApiUsecase(
            registerRepository: gh<_i13.RegisterRepository>()));
    gh.lazySingleton<_i31.ChangeNicknameRepository>(() =>
        _i31.ChangeNicknameRepositoryImpl(
            changeNicknameDatasource: gh<_i16.ChangeNicknameDatasource>()));
    gh.lazySingleton<_i32.ChangeNicknameUsecase>(() =>
        _i32.ChangeNicknameUsecase(
            changeNicknameRepository: gh<_i31.ChangeNicknameRepository>()));
    gh.lazySingleton<_i33.TestBloc>(
        () => _i33.TestBloc(usecase: gh<_i25.Usecase>()));
    return this;
  }
}
