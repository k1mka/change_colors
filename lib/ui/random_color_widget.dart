import 'package:flutter/material.dart';
import 'dart:math';

class RandomColorWidget extends StatefulWidget {
  const RandomColorWidget({Key? key}) : super(key: key);

  @override
  State<RandomColorWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  Color backgroundColor = Colors.green;

  void updateColor() {
    Random random = Random();
    final randomNumber = random.nextInt(0xffffffff);
    Color randomColor = Color(randomNumber);
    setState(() => backgroundColor = randomColor);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateColor,
      child: Container(
        width: 500.0,
        height: 1000.0,
        color: backgroundColor,
      ),
    );
  }
}
