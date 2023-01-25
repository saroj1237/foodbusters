// Dart imports:
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest(String reason) =
      UnauthorisedRequest;

  const factory NetworkExceptions.badRequest(String reason) = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout(String reason) =
      RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict(String reason) = Conflict;

  const factory NetworkExceptions.internalServerError(String reason) =
      InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable(String reason) =
      ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions =
                  const NetworkExceptions.requestTimeout("Requrest timeout");
              break;
            case DioErrorType.other:
              networkExceptions = const NetworkExceptions.unexpectedError();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response!.statusCode) {
                case 400:
                  networkExceptions = NetworkExceptions.badRequest(
                      error.response!.data['error'] ??
                          "Error Occured with status 400");

                  break;
                case 401:
                  networkExceptions = NetworkExceptions.unauthorisedRequest(
                      error.response!.data['error'] ??
                          "Error Occured with status 401");
                  break;
                case 403:
                  networkExceptions = NetworkExceptions.unauthorisedRequest(
                      error.response!.data['error'] ??
                          "Error Occured with status 403");
                  break;
                case 404:
                  networkExceptions = NetworkExceptions.notFound(
                      error.response!.data['error'] ??
                          "Error Occured with status 404");
                  break;
                case 409:
                  networkExceptions = NetworkExceptions.conflict(
                      error.response!.data['error'] ??
                          "Error Occured with status 409");
                  break;
                case 408:
                  networkExceptions = NetworkExceptions.requestTimeout(
                      error.response!.data['error'] ??
                          "Error Occured with status 408");
                  break;
                case 422:
                  networkExceptions = NetworkExceptions.badRequest(
                      error.response!.data['error'] ??
                          "Error Occured with status 422");
                  break;
                case 500:
                  networkExceptions =
                      const NetworkExceptions.internalServerError(
                          "Internal Server Error with status 500");
                  break;
                case 503:
                  networkExceptions =
                      const NetworkExceptions.serviceUnavailable(
                          "Internal Server Error with status 503");
                  break;
                default:
                  var responseCode = error.response!.statusCode;
                  networkExceptions = NetworkExceptions.defaultError(
                    error.response!.data['error_message'] ??
                        "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        // Helper.printError(e.toString());
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(
      notImplemented: () {
        errorMessage = "Not Implemented";
      },
      requestCancelled: () {
        errorMessage = "Request Cancelled";
      },
      internalServerError: (reason) {
        errorMessage = reason;
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: (reason) {
        errorMessage = reason;
      },
      methodNotAllowed: () {
        errorMessage = "Method Allowed";
      },
      badRequest: (String error) {
        errorMessage = error;
      },
      unauthorisedRequest: (reason) {
        errorMessage = reason;
      },
      unexpectedError: () {
        errorMessage = "Unexpected error occurred";
      },
      requestTimeout: (reason) {
        errorMessage = reason;
      },
      noInternetConnection: () {
        errorMessage = "No internet connection";
      },
      conflict: (reason) {
        errorMessage = reason;
      },
      sendTimeout: () {
        errorMessage = "Send timeout in connection with API server";
      },
      unableToProcess: () {
        errorMessage = "Unable to process the data";
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = "Unexpected error occurred";
      },
      notAcceptable: () {
        errorMessage = "Not acceptable";
      },
    );
    return errorMessage;
  }
}
