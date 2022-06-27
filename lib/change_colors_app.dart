import 'package:change_colors/ui/hey_text.dart';
import 'package:flutter/material.dart';

class ChangeColorsApp extends StatelessWidget {
  const ChangeColorsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('colors app'),
        ),
        body: const Center(
          child: HeyText(),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
