import 'dart:convert';
import 'dart:io';

import 'package:flutter_boilerplate/shared/error/http_errors.dart';
import 'package:flutter_boilerplate/shared/helpers/app_environment.dart';
import 'package:http/http.dart';

// authToken to be decided either to be added in query or headers,
// for now adding authToken to headers.
class HttpService {
  final String _baseUrl = AppEnvironment.getApiURL();
  static String authToken = '';

  Map<String, String> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': authToken
  };

  Future<dynamic> makeGetRequest(String url) async {
    try {
      Response response = await get(Uri.parse(_baseUrl + url), headers: headers);
      return _responseData(response);
    } catch (e) {
      throw FetchDataException(e.toString());
    }
  }

  Future<dynamic> makePostRequest(String url, dynamic payload) async {
    try {
      Response response =
          await post(Uri.parse(_baseUrl + url), headers: headers, body: payload);
      return _responseData(response);
    } catch (e) {
      throw FetchDataException(e.toString());
    }
  }

  Future<dynamic> makePutRequest(String url, dynamic payload) async {
    try {
      Response response =
          await put(Uri.parse(_baseUrl + url), headers: headers, body: payload);
      return _responseData(response);
    } catch (e) {
      throw FetchDataException(e.toString());
    }
  }

  Future<dynamic> makeDeleteRequest(String url) async {
    try {
      Response response = await delete(Uri.parse(_baseUrl + url), headers: headers);
      return _responseData(response);
    } catch (e) {
      throw FetchDataException(e.toString());
    }
  }

  dynamic _responseData(Response response) {
    var responseJson = json.decode(response.body);
    switch (response.statusCode) {
      case 200:
        if (responseJson['error'] == null) {
          return responseJson['data'];
        }
        throw InvalidDataException(responseJson['message']);
      case 401:
      case 403:
        throw UnauthorisedException(responseJson['message']);
      case 404:
      case 500:
        throw FetchDataException(responseJson['message']);
      default:
        throw BadRequestException(responseJson['message']);
    }
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
