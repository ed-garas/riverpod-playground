class NullTokenException implements Exception {}

class InternalServerException implements Exception {}

class DataFetchException implements Exception {
  final String code;
  DataFetchException(this.code);
}

class UserNotAuthenticatedException implements Exception {}

class UnexpectedDioException implements Exception {}

class NullRegistrationToken implements Exception {}

class RegisterPushTokenException implements Exception {
  final String code;
  final String message;
  RegisterPushTokenException(this.code, this.message);
}

class UserNotFoundException implements Exception {
  final String code;
  UserNotFoundException(this.code);
}

class InternalServerErrorException implements Exception {}

class InvalidEmailException implements Exception {
  final String code;
  InvalidEmailException(this.code);
}

class InvalidNotificationPath implements Exception {
  final String path;

  const InvalidNotificationPath(this.path);
}