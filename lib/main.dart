import 'package:flutter/material.dart';
import 'package:jpscreen/square.dart';
import 'package:jpscreen/rectangle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            MySquare(),
            MyRec(),
          ],
        )),
      ),
    );
  }
}
