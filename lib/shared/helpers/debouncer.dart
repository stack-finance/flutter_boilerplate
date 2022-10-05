import 'package:flutter/foundation.dart';
import 'dart:async';

class Debouncer {
  final int milliseconds;

  late Timer _timer;
  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer.cancel();

    _timer = Timer(
      const Duration(milliseconds: 400),
      action,
    );
  }
}
