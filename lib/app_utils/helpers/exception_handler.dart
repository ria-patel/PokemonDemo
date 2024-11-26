// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:pokemon_demo/app_utils/constants/error_messages.dart';

class APIException implements Exception {
  final String message;
  final Map<String, dynamic> error;

  APIException({required this.message, this.error = const {}});
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return APIException(message: ErrorMessages.noInternet);
        case DioExceptionType.connectionTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        default:
          return APIException(message: ErrorMessages.somethingWentWrong);
      }
    } else {
      return APIException(message: ErrorMessages.somethingWentWrong);
    }
  }
}

class ErrorHandler {
  ErrorHandler._privateConstructor();

  static String getErrorMessage(APIException apiException) =>
      apiException.error.isNotEmpty
          ? apiException.error['message']
          : apiException.message;
}
