import 'dart:math';

import 'package:flutter/material.dart';

/// mixin that generates random color with [generateColor] method
mixin ColorGenerator {
  final _random = Random();

  /// generates random color
  Color generateColor() {
    final randomNumber = _random.nextInt(0xffffffff);
    final randomColor = Color(randomNumber);

    return randomColor;
  }
}
