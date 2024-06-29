// ignore_for_file: type_literal_in_constant_pattern

import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:triply/core/di/injectable.dart';
import 'package:triply/core/network/error/exceptions.dart';
import 'package:triply/features/auth/auth_features/no_internet/internet_bloc.dart';

mixin ErrorHandling {
  Exception handleException(dynamic error, {StackTrace? stackTrace}) {
    log('''
    -----------------------------------
      Exception: ${error.toString()}
    -----------------------------------
    ''');

    switch (error) {
      case SocketException:
        return NoInternetConnectionException();
      case TimeoutException:
        break;

      case Response:
        return responseException(error);

      case DioException:
        return dioException(error);
      default:
        return error;
    }
    return error;
  }

  Exception responseException(Response response) {
    switch (response.statusCode) {
      case HttpStatus.forbidden:
        return ForbiddenException.withErrorCode(response.data);
      case HttpStatus.notFound:
        return NotFoundException.withErrorCode(response.data);
      case HttpStatus.unprocessableEntity:
        return UnprocessableException.withErrorCode(response.data);
      case HttpStatus.conflict:
        return ConflictException.withErrorCode(response.data);
      case HttpStatus.tooManyRequests:
        return TooManyRequestsException();
      case HttpStatus.internalServerError:
        return const ServerException(message: "Server not responding");
      case HttpStatus.unauthorized:
        return AuthException();
    }
    return ServerException.withErrorCode(response.data);
  }

  Exception dioException(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
        {
          locator<InternetBloc>().add(const InternetEvent.noInternet(true));
          return NoInternetConnectionException();
        }
      case DioExceptionType.receiveTimeout:
        return const ServerException(message: "Server not responding");
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        {
          if (dio is SocketException || dio is TimeoutException) {
            return NoInternetConnectionException();
          }
          final response = dio.response;
          if (response != null) {
            return responseException(response);
          }
          return const ServerException(message: "App not responding");
        }
    }
  }

  Exception defaultException(dynamic error, StackTrace? stackTrace) {
    if (error is SocketException || error is TimeoutException) {
      return NoInternetConnectionException();
    }
    log('''
    ------------------------------------------------------

    Exception: $error

    StackTrace: ${stackTrace ?? "STACK IS NULL"}

    ------------------------------------------------------
    ''');
    return error;
  }
}
