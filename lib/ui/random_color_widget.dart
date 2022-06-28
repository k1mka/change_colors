import 'package:flutter/material.dart';
import 'dart:math';

class RandomColorWidget extends StatefulWidget {
  const RandomColorWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<RandomColorWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget> {
  Color backgroundColor = Colors.green;
  final random = Random();

  Color generateColor() {
    final randomNumber = random.nextInt(0xffffffff);
    final randomColor = Color(randomNumber);
    return randomColor;
  }

  void updateColor() {
    setState(() {
      backgroundColor = generateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateColor,
      child: Container(
        width: 500.0,
        height: 1000.0,
        color: backgroundColor,
        child: widget.child,
      ),
    );
  }
}
