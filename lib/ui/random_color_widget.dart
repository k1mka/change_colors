import 'package:change_colors/tools/color_generator.dart';
import 'package:flutter/material.dart';

/// widget that displays random color after tup
class RandomColorWidget extends StatefulWidget {
  /// Widget`s child
  final Widget child;

  /// default constructor
  const RandomColorWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<RandomColorWidget> createState() => _RandomColorWidgetState();
}

class _RandomColorWidgetState extends State<RandomColorWidget>
    with ColorGenerator {
  Color backgroundColor = Colors.green;

  void updateColor() {
    setState(() {
      backgroundColor = generateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateColor,
      child: Expanded(
        child: Container(
          color: backgroundColor,
          child: widget.child,
        ),
      ),
    );
  }
}
