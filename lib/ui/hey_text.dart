import 'package:change_colors/tools/color_generator.dart';
import 'package:flutter/material.dart';

/// widget that displays 'HeyText'
class HeyText extends StatefulWidget {
  /// default constructor
  const HeyText({Key? key}) : super(key: key);

  @override
  State<HeyText> createState() => _HeyTextState();
}

class _HeyTextState extends State<HeyText> with ColorGenerator {
  Color textColor = Colors.black;
  static const heyThereSize = 68.0;
  static const text = 'Hey there';

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
        text,
        style: TextStyle(fontSize: heyThereSize, color: textColor),
      ),
    );
  }
}
