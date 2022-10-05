class HttpException implements Exception {
  final _message;
  final _title;

  HttpException([this._message, this._title]);

  @override
  String toString() => '$_title: $_message';
}

class FetchDataException extends HttpException {
  FetchDataException([String? message]) : super(message, 'Cannot connect');
}

class BadRequestException extends HttpException {
  BadRequestException([message]) : super(message, 'Bad Request');
}

class UnauthorisedException extends HttpException {
  UnauthorisedException([message]) : super(message, 'Unauthorised');
}

class InvalidDataException extends HttpException {
  InvalidDataException([String? message]) : super(message, 'Invalid data');
}

class LocalConnectionException extends HttpException {
  LocalConnectionException([String? message])
      : super(message = 'Cannot find internet connection', 'Network Error');
}
