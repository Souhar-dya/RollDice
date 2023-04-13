import 'package:flutter/material.dart';
import 'gradientcontainer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice",
      home: Scaffold(
        body: GradientContainer(
            Colors.deepPurple, Color.fromARGB(255, 11, 197, 169)),
      ),
    );
  }
}
