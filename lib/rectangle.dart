import 'package:flutter/material.dart';

class MyRec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 54, 243, 33),
      borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Image.network(
          'https://example.com/your_image.jpg',
          width: 150.0,
          height: 150.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}