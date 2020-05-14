import 'package:flutter/foundation.dart';

class AppEnvironment {

  String getApiURL() {
    if (kReleaseMode) {
      return 'PROD_API_URL';
    } else {
      return 'STAGING_API_URL';
    }
  }
}