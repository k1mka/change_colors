import 'package:flutter/material.dart';

class HeyText extends StatelessWidget {
  const HeyText({Key? key}) : super(key: key);
  static const text = 'Hey there';

  @override
  Widget build(BuildContext context) {
    return const Text(
      text,
      style: TextStyle(fontSize: 68.0),
    );
  }
}
