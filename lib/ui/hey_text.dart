import 'package:change_colors/tools/color_generator.dart';
import 'package:flutter/material.dart';

class HeyText extends StatefulWidget {
  const HeyText({Key? key}) : super(key: key);
  static const text = 'Hey there';

  @override
  State<HeyText> createState() => _HeyTextState();
}

class _HeyTextState extends State<HeyText> with ColorGenerator {
  Color textColor = Colors.black;

  void updateTextColor() {
    setState(() {
      textColor = generateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateTextColor,
      child: Text(
        HeyText.text,
        style: TextStyle(fontSize: 68.0, color: textColor),
      ),
    );
  }
}
