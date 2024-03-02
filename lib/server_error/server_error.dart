class ServerError extends Error {
  final String message;
  final int serverErrorCode;

  ServerError(this.message, this.serverErrorCode);

  @override
  String toString() {
    return 'ServerError: $message $serverErrorCode';
  }
}

class InvalidRequestParamError extends ServerError {
  InvalidRequestParamError(String message, int errorCode)
      : super(
          message,
          errorCode,
        );
}

class InvalidTokenError extends ServerError {
  InvalidTokenError(String message, int errorCode)
      : super(
          message,
          errorCode,
        );
}
