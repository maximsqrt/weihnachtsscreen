

import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration :BoxDecoration(
      color: Colors.blue,
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