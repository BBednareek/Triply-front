import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart' as apple;
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/login/data/datasource/login_datasource.dart';
import 'package:triply/features/auth/auth_features/login/domain/entities/login_mail_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/login_result_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResultEntity>> mailWithApi(
      {required LoginMailEntity entity});
  Future<Either<Failure, LoginResultEntity>> googleWithApi(
      {required String accessToken});
  Future<Either<Failure, LoginResultEntity>> appleWithApi(
      {required AppleRequestEntity request});
  Future<Either<Failure, FirebaseUserEntity>> appleWithFirebase();
  Future<Either<Failure, FirebaseUserEntity>> googleWithFirebase();
  Future<Either<Failure, bool>> requestResetPassword({required String email});
}

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDatasource loginDatasource;

  LoginRepositoryImpl({required this.loginDatasource});

  @override
  Future<Either<Failure, LoginResultEntity>> appleWithApi(
      {required AppleRequestEntity request}) async {
    try {
      final LoginResultEntity result =
          await loginDatasource.appleWithApi(request: request);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, FirebaseUserEntity>> appleWithFirebase() async {
    try {
      final apple.AuthorizationResult result =
          await apple.TheAppleSignIn.performRequests([
        const apple.AppleIdRequest(
            requestedScopes: [apple.Scope.email, apple.Scope.fullName])
      ]);

      if (result.status == apple.AuthorizationStatus.authorized) {
        final apple.AppleIdCredential appleIdCredential = result.credential!;
        final OAuthProvider oAuthProvider = OAuthProvider('apple.com');

        final OAuthCredential appleCredential = oAuthProvider.credential(
          idToken: String.fromCharCodes(appleIdCredential.identityToken!),
          accessToken:
              String.fromCharCodes(appleIdCredential.authorizationCode!),
        );

        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(appleCredential);

        return Right(FirebaseUserEntity(
          jwtToken: userCredential.credential!.accessToken!,
          user: userCredential.user!,
        ));
      } else if (result.status == apple.AuthorizationStatus.cancelled) {
        return const Left(Failure(
          type: FailureType.APPLE_CANCEL,
          errorCode: "appleCancel",
          message: "Apple cancelled",
        ));
      }
      return const Left(Failure(
        type: FailureType.APPLE_ERROR,
        errorCode: "appleError",
        message: "Apple Error",
      ));
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, LoginResultEntity>> googleWithApi(
      {required String accessToken}) async {
    try {
      final LoginResultEntity result =
          await loginDatasource.googleWithApi(accessToken: accessToken);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, FirebaseUserEntity>> googleWithFirebase() async {
    try {
      if (await GoogleSignIn().isSignedIn()) {
        await GoogleSignIn().disconnect();
        await GoogleSignIn().signOut();
      }

      final GoogleSignInAccount? googleUser = await GoogleSignIn(
              scopes: ['profile', 'https://www.googleapis.com/auth/plus.me'])
          .signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final OAuthCredential googleOAuthCredential =
          GoogleAuthProvider.credential(
              accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(googleOAuthCredential);

      return Right(FirebaseUserEntity(
        jwtToken: userCredential.credential!.accessToken!,
        user: userCredential.user!,
      ));
    } catch (e) {
      return const Left(Failure(
        type: FailureType.GOOGLE_ERROR,
        errorCode: "googleError",
        message: "Google error",
      ));
    }
  }

  @override
  Future<Either<Failure, LoginResultEntity>> mailWithApi(
      {required LoginMailEntity entity}) async {
    try {
      final LoginResultEntity result =
          await loginDatasource.mailWithApi(entity: entity);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, bool>> requestResetPassword(
      {required String email}) async {
    try {
      final bool result =
          await loginDatasource.requestResetPassword(email: email);

      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
