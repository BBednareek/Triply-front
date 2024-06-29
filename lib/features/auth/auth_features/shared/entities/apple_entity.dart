import 'package:equatable/equatable.dart';
import 'package:triply/features/auth/auth_features/shared/entities/firebase_user_entity.dart';

class AppleRequestEntity extends Equatable {
  final String accessToken;
  final String mail;

  final String? lastName;
  final String? firstName;

  const AppleRequestEntity.login(
      {required this.accessToken,
      required this.mail,
      this.lastName,
      this.firstName});

  const AppleRequestEntity.register(
      {required this.accessToken,
      required this.lastName,
      required this.firstName,
      required this.mail});

  factory AppleRequestEntity.createByFirebaseToLogin(FirebaseUserEntity user) =>
      AppleRequestEntity.login(
          accessToken: user.jwtToken, mail: user.user.email!);

  factory AppleRequestEntity.createByFirebaseToRegister(
      FirebaseUserEntity firebaseUser) {
    final userName =
        firebaseUser.user.displayName?.split(" ") ?? ["John", "Doe"];
    return AppleRequestEntity.register(
        accessToken: firebaseUser.jwtToken,
        mail: firebaseUser.user.email!,
        firstName: userName[0],
        lastName: userName[1]);
  }

  AppleRequestEntity resfreshToLogin(String token) =>
      AppleRequestEntity.login(accessToken: token, mail: mail);

  Map<String, dynamic> loginToJson() =>
      {"email": mail, "accessToken": accessToken};

  Map<String, dynamic> registerToJson() => {
        "email": mail,
        "accessToken": accessToken,
        "lastName": lastName,
        "firstName": firstName
      };

  @override
  List<Object?> get props => [accessToken, mail, lastName, firstName];
}
