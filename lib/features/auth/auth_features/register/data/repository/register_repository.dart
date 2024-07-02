import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:the_apple_sign_in/apple_id_credential.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart' as apple;
import 'package:triply/core/network/error/failures.dart';
import 'package:triply/features/auth/auth_features/register/data/datasource/register_datasource.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/request_register_entity.dart';
import 'package:triply/features/auth/auth_features/register/domain/entities/response_register_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/apple_entity.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';

abstract class RegisterRepository {
  Future<Either<Failure, ResponseRegisterEntity>> mailRegister(
      {required RequestMailRegisterEntity entity});

  Future<Either<Failure, FirebaseUserEntity>> signInGoogle();
  Future<Either<Failure, ResponseRegisterEntity>> apiGoogle(
      {required String accessToken});

  Future<Either<Failure, FirebaseUserEntity>> signInApple();
  Future<Either<Failure, ResponseRegisterEntity>> apiApple(
      {required AppleRequestEntity entity});
}

@LazySingleton(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterDatasource registerDatasource;

  RegisterRepositoryImpl({required this.registerDatasource});

  @override
  Future<Either<Failure, ResponseRegisterEntity>> apiApple(
      {required AppleRequestEntity entity}) async {
    try {
      final ResponseRegisterEntity result =
          await registerDatasource.registerByApple(request: entity);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, ResponseRegisterEntity>> apiGoogle(
      {required String accessToken}) async {
    try {
      final ResponseRegisterEntity result =
          await registerDatasource.registerByGoogle(accessToken: accessToken);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, ResponseRegisterEntity>> mailRegister(
      {required RequestMailRegisterEntity entity}) async {
    try {
      final ResponseRegisterEntity result =
          await registerDatasource.registerByEmail(entity: entity);
      return Right(result);
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, FirebaseUserEntity>> signInApple() async {
    try {
      final apple.AuthorizationResult result =
          await apple.TheAppleSignIn.performRequests([
        const apple.AppleIdRequest(
            requestedScopes: [apple.Scope.email, apple.Scope.fullName])
      ]);

      if (result.status == apple.AuthorizationStatus.authorized) {
        final AppleIdCredential appleIdCredential = result.credential!;
        final OAuthProvider oAuthProvider = OAuthProvider('apple.com');

        final OAuthCredential oAuthCredential = oAuthProvider.credential(
          idToken: String.fromCharCodes(appleIdCredential.identityToken!),
          accessToken:
              String.fromCharCodes(appleIdCredential.authorizationCode!),
        );

        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(oAuthCredential);

        return Right(FirebaseUserEntity(
          jwtToken: userCredential.credential!.accessToken!,
          user: userCredential.user!,
        ));
      } else if (result.status == apple.AuthorizationStatus.cancelled) {
        return const Left(Failure(
            type: FailureType.APPLE_CANCEL,
            errorCode: "Apple Cancel",
            message: "Apple Cancel"));
      }
      return const Left(Failure(
          type: FailureType.APPLE_ERROR,
          errorCode: "Apple Error",
          message: "Apple Error"));
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }

  @override
  Future<Either<Failure, FirebaseUserEntity>> signInGoogle() async {
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

      final OAuthCredential googleAuthCredential =
          GoogleAuthProvider.credential(
              accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(googleAuthCredential);

      return Right(FirebaseUserEntity(
        jwtToken: userCredential.credential!.accessToken!,
        user: userCredential.user!,
      ));
    } catch (e) {
      return Left(Failure.throwable(e));
    }
  }
}
