import 'dart:math';

import 'package:flutter/material.dart';

mixin ColorGenerator {
  final random = Random();

  Color generateColor() {
    final randomNumber = random.nextInt(0xffffffff);
    final randomColor = Color(randomNumber);
    return randomColor;
  }
}
