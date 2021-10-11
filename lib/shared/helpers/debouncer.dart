import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  final int milliseconds;

  Timer _timer;
  Debouncer({this.milliseconds});

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer.cancel();
    }

    _timer = Timer(
      milliseconds != null
          ? Duration(milliseconds: milliseconds)
          : const Duration(milliseconds: 400),
      action,
    );
  }
}
