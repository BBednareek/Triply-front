// ignore_for_file: invalid_use_of_protected_member

import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:triply/core/network/error/exceptions.dart';

enum FailureType {
  UNKNOWN,
  SERVER,
  NOT_FOUND,
  UNPROCESSABLE,
  FORBIDDEN,
  CONFLICT,
  AUTH,
  CONNECTION_TIMEOUT,
  NO_INTERNET_CONNECTION,
  TOO_MANY_REQUESTS,
  FIREBASE,
  GOOGLE_ERROR,
  GOOGLE_CANCEL,
  APPLE_ERROR,
  APPLE_CANCEL,
  PERMISSION,
  STORAGE,
  METHOD_CHANNEL,
  ADVERTISING;
}

class Failure extends Equatable {
  final FailureType type;

  final String errorCode;
  final String message;

  const Failure({
    required this.type,
    required this.errorCode,
    required this.message,
  });

  factory Failure.throwable(dynamic e) {
    if (e is UnprocessableException) {
      return const Failure(
        type: FailureType.UNPROCESSABLE,
        errorCode: "Unprocessable",
        message: "Unprocessable",
      );
    } else if (e is ConflictException) {
      return const Failure(
        type: FailureType.CONFLICT,
        errorCode: "Conflict",
        message: "Conflict",
      );
    } else if (e is NotFoundException) {
      return const Failure(
        type: FailureType.NOT_FOUND,
        errorCode: "Not found",
        message: "Not found",
      );
    } else if (e is ForbiddenException) {
      return const Failure(
        type: FailureType.FORBIDDEN,
        errorCode: "Forbidden",
        message: "Forbidden",
      );
    } else if (e is ServerException) {
      return const Failure(
        type: FailureType.SERVER,
        errorCode: "Server exception",
        message: "Server exception",
      );
    } else if (e is AuthException) {
      return const Failure(
        type: FailureType.AUTH,
        errorCode: "Auth exception",
        message: "Auth exception",
      );
    } else if (e is NoInternetConnectionException || e is SocketException) {
      return const Failure(
        type: FailureType.NO_INTERNET_CONNECTION,
        errorCode: "No internet connection",
        message: "No internet connection",
      );
    } else if (e is TooManyRequestsException) {
      return const Failure(
        type: FailureType.TOO_MANY_REQUESTS,
        errorCode: "Too many requests",
        message: "Too many requests",
      );
    } else if (e is ServerException) {
      return Failure(
          type: FailureType.SERVER, errorCode: e.message, message: e.message);
    }
    return const Failure(
      type: FailureType.UNKNOWN,
      errorCode: "Unknown failure",
      message: "Unknown failure",
    );
  }

  @override
  List<Object> get props => [type, message];

  @override
  String toString() => message;
}
