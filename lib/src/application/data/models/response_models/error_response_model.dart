import 'dart:developer';

import 'package:dio/dio.dart';

class ErrorResponseModel {
  final String message;
  final ErrorType type;
  final int? statusCode;

  ErrorResponseModel(this.message, this.type, {this.statusCode});

  @override
  String toString() =>
      'AppError(message: $message, type: $type, statusCode: $statusCode)';

  factory ErrorResponseModel.serverErrorParse(DioException error) {
    final serverMessage = error.response?.data['message'];
    return ErrorResponseModel("Server error: $serverMessage", ErrorType.server,
        statusCode: error.response?.statusCode);
  }
}

enum ErrorType {
  network,
  server,
  validation,
  unknown,
}

class ErrorHandler {
  static ErrorResponseModel handleError(Object? error) {
    log(error.toString());
    if (error.runtimeType == DioException) {
      switch ((error as DioException).type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return ErrorResponseModel('Connection Timeout', ErrorType.network);
        case DioExceptionType.badResponse:
          return ErrorResponseModel.serverErrorParse(error);
        case DioExceptionType.cancel:
          return ErrorResponseModel('Request Cancelled', ErrorType.network);
        case DioExceptionType.unknown:
        default:
          return ErrorResponseModel('Unexpected Error', ErrorType.unknown);
      }
    } else {
      return ErrorResponseModel(error.toString(), ErrorType.unknown);
    }
  }
}
