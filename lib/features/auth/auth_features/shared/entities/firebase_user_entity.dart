import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserEntity extends Equatable {
  final User user;
  final String jwtToken;

  const FirebaseUserEntity({required this.jwtToken, required this.user});

  @override
  List<Object> get props => [user, jwtToken];
}
