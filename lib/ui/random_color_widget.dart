import 'package:flutter/material.dart';

class RandomColorWidget extends StatelessWidget {
  const RandomColorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 1000.0,
      color: Colors.red,
    );
  }
}
