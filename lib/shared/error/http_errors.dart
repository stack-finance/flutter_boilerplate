class HttpException implements Exception {
  final _message;
  final _title;

  HttpException([this._message, this._title]);

  @override
  String toString() => '$_title: $_message';
}

class FetchDataException extends HttpException {
  FetchDataException([String? message]) : super(message, 'Error fetching data. Please try again later.');
}

class BadRequestException extends HttpException {
  BadRequestException([message]) : super(message, 'Invalid request. Please check your input and try again.');
}

class UnauthorisedException extends HttpException {
  UnauthorisedException([message]) : super(message, 'Unauthorized access. Please log in and try again.');
}

class InvalidDataException extends HttpException {
  InvalidDataException([String? message]) : super(message, 'Invalid data. Please check your input and try again.');
}

class LocalConnectionException extends HttpException {
  LocalConnectionException([String? message])
      : super(message = 'The internet has abandoned us. Please coax it back so we can continue.', 'Network Error');
}
