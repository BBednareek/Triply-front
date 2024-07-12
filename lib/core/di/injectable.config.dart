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
    as _i17;
import 'package:triply/features/auth/auth_features/login/data/repository/login_repository.dart'
    as _i19;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_api_usecase.dart'
    as _i21;
import 'package:triply/features/auth/auth_features/login/domain/usecases/apple_firebase_usecase.dart'
    as _i22;
import 'package:triply/features/auth/auth_features/login/domain/usecases/forgot_password_usecase.dart'
    as _i26;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_api_usecase.dart'
    as _i23;
import 'package:triply/features/auth/auth_features/login/domain/usecases/google_firebase_usecase.dart'
    as _i24;
import 'package:triply/features/auth/auth_features/login/domain/usecases/mail_api_usecase.dart'
    as _i25;
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart'
    as _i6;
import 'package:triply/features/auth/auth_features/register/data/datasource/register_datasource.dart'
    as _i11;
import 'package:triply/features/auth/auth_features/register/data/repository/register_repository.dart'
    as _i14;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_api_usecase.dart'
    as _i29;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_apple_firebase_usecase.dart'
    as _i30;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_api_usecase.dart'
    as _i31;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_google_firebase_usecase.dart'
    as _i32;
import 'package:triply/features/auth/auth_features/register/domain/usecases/register_mail_api_usecase.dart'
    as _i33;
import 'package:triply/features/auth/cubit/auth_cubit.dart' as _i7;
import 'package:triply/features/settings/account/change_email/data/datasource/change_email_datasource.dart'
    as _i10;
import 'package:triply/features/settings/account/change_email/data/repository/change_email_repository.dart'
    as _i13;
import 'package:triply/features/settings/account/change_email/domain/usecases/change_email_usecase.dart'
    as _i27;
import 'package:triply/features/settings/account/change_nickname/data/datasource/change_nickname_datasource.dart'
    as _i18;
import 'package:triply/features/settings/account/change_nickname/data/repository/change_nickname_repository.dart'
    as _i34;
import 'package:triply/features/settings/account/change_nickname/domain/usecases/change_nickname_usecase.dart'
    as _i38;
import 'package:triply/features/settings/account/change_password/data/datasource/change_password_datasource.dart'
    as _i16;
import 'package:triply/features/settings/account/change_password/data/repository/change_password_repository.dart'
    as _i35;
import 'package:triply/features/settings/account/change_password/domain/usecases/change_password_usecase.dart'
    as _i37;
import 'package:triply/features/settings/account/delete_account/data/datasource/delete_account_datasource.dart'
    as _i12;
import 'package:triply/features/settings/account/delete_account/data/repository/delete_account_repository.dart'
    as _i20;
import 'package:triply/features/settings/account/delete_account/domain/usecases/delete_account_usecase.dart'
    as _i36;
import 'package:triply/features/settings/switch_theme/cubit/theme_cubit.dart'
    as _i3;
import 'package:triply/features/test/bloc/test_bloc.dart' as _i39;
import 'package:triply/features/test/datasource/datasource.dart' as _i9;
import 'package:triply/features/test/datasource/repository.dart' as _i15;
import 'package:triply/features/test/datasource/usecase.dart' as _i28;

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
    gh.lazySingleton<_i12.DeleteAccountDatasource>(() =>
        _i12.DeleteAccountDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i13.ChangeEmailRepository>(() =>
        _i13.ChangeEmailRepositoryImpl(
            changeEmailDatasource: gh<_i10.ChangeEmailDatasource>()));
    gh.lazySingleton<_i14.RegisterRepository>(() => _i14.RegisterRepositoryImpl(
        registerDatasource: gh<_i11.RegisterDatasource>()));
    gh.lazySingleton<_i15.TestRepository>(() =>
        _i15.TestRepositoryImpl(testDatasource: gh<_i9.TestDatasource>()));
    gh.lazySingleton<_i16.ChangePasswordDatasource>(() =>
        _i16.ChangePasswordDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i17.LoginDatasource>(
        () => _i17.LoginDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i18.ChangeNicknameDatasource>(() =>
        _i18.ChangeNicknameDatasourceImpl(dioFactory: gh<_i8.DioFactory>()));
    gh.lazySingleton<_i19.LoginRepository>(() =>
        _i19.LoginRepositoryImpl(loginDatasource: gh<_i17.LoginDatasource>()));
    gh.lazySingleton<_i20.DeleteAccountRepository>(() =>
        _i20.DeleteAccountRepositoryImpl(
            deleteAccountDatasource: gh<_i12.DeleteAccountDatasource>()));
    gh.lazySingleton<_i21.LoginAppleApiUsecase>(() =>
        _i21.LoginAppleApiUsecase(loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i22.LoginAppleFirebaseUsecase>(() =>
        _i22.LoginAppleFirebaseUsecase(
            loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i23.LoginGoogleApiUsecase>(() =>
        _i23.LoginGoogleApiUsecase(
            loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i24.LoginGoogleFirebaseUsecase>(() =>
        _i24.LoginGoogleFirebaseUsecase(
            loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i25.LoginMailApiUsecase>(() =>
        _i25.LoginMailApiUsecase(loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i26.ForgotPasswordUsecase>(() =>
        _i26.ForgotPasswordUsecase(
            loginRepository: gh<_i19.LoginRepository>()));
    gh.lazySingleton<_i27.ChangeEmailUsecase>(() => _i27.ChangeEmailUsecase(
        changeEmailRepository: gh<_i13.ChangeEmailRepository>()));
    gh.lazySingleton<_i28.Usecase>(
        () => _i28.Usecase(testRepository: gh<_i15.TestRepository>()));
    gh.lazySingleton<_i29.RegisterAppleApiUsecase>(() =>
        _i29.RegisterAppleApiUsecase(
            registerRepository: gh<_i14.RegisterRepository>()));
    gh.lazySingleton<_i30.RegisterAppleFirebaseUsecase>(() =>
        _i30.RegisterAppleFirebaseUsecase(
            registerRepository: gh<_i14.RegisterRepository>()));
    gh.lazySingleton<_i31.RegisterGoogleApiUsecase>(() =>
        _i31.RegisterGoogleApiUsecase(
            registerRepository: gh<_i14.RegisterRepository>()));
    gh.lazySingleton<_i32.RegisterGoogleFirebaseUsecase>(() =>
        _i32.RegisterGoogleFirebaseUsecase(
            registerRepository: gh<_i14.RegisterRepository>()));
    gh.lazySingleton<_i33.RegisterMailApiUsecase>(() =>
        _i33.RegisterMailApiUsecase(
            registerRepository: gh<_i14.RegisterRepository>()));
    gh.lazySingleton<_i34.ChangeNicknameRepository>(() =>
        _i34.ChangeNicknameRepositoryImpl(
            changeNicknameDatasource: gh<_i18.ChangeNicknameDatasource>()));
    gh.lazySingleton<_i35.ChangePasswordRepository>(() =>
        _i35.ChangePasswordRepositoryImpl(
            changePasswordDatasource: gh<_i16.ChangePasswordDatasource>()));
    gh.lazySingleton<_i36.DeleteAccountUsecase>(() => _i36.DeleteAccountUsecase(
        deleteAccountRepository: gh<_i20.DeleteAccountRepository>()));
    gh.lazySingleton<_i37.ChangePasswordUsecase>(() =>
        _i37.ChangePasswordUsecase(
            changePasswordRepository: gh<_i35.ChangePasswordRepository>()));
    gh.lazySingleton<_i38.ChangeNicknameUsecase>(() =>
        _i38.ChangeNicknameUsecase(
            changeNicknameRepository: gh<_i34.ChangeNicknameRepository>()));
    gh.lazySingleton<_i39.TestBloc>(
        () => _i39.TestBloc(usecase: gh<_i28.Usecase>()));
    return this;
  }
}
