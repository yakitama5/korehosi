import 'package:packages_domain/src/common/value_object/business_exception_type.dart';

sealed class AppException implements Exception {
  const AppException();
}

class BusinessException extends AppException {
  const BusinessException(this.exceptionType);

  final BusinessExceptionType exceptionType;
}

sealed class NetworkException extends AppException {
  const NetworkException();

  factory NetworkException.fromStatusCode(int? statusCode) {
    if (statusCode == null) {
      return const UnknownNetworkException();
    }

    return switch (statusCode) {
      >= 400 && < 500 => const ClientNetworkException(),
      >= 500 && < 600 => const ServerNetworkException(),
      _ => throw ArgumentError(
        'Invalid status code: $statusCode.',
        'statusCode',
      ),
    };
  }
}

class ClientNetworkException extends NetworkException {
  const ClientNetworkException();
}

class ServerNetworkException extends NetworkException {
  const ServerNetworkException();
}

class UnknownNetworkException extends NetworkException {
  const UnknownNetworkException();
}

class UnknownException extends AppException {
  const UnknownException();
}
