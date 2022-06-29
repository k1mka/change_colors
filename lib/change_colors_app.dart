import 'package:change_colors/ui/hey_text.dart';
import 'package:change_colors/ui/random_color_widget.dart';
import 'package:flutter/material.dart';

/// [ChangeColorsApp]
class ChangeColorsApp extends StatelessWidget {
  /// default constructor
  const ChangeColorsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('colors app'),
        ),
        body: const RandomColorWidget(
          child: Center(
            child: HeyText(),
          ),
        ),
      ),
    );
  }
}
