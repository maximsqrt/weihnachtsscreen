import 'package:flutter/material.dart';

class MyRec extends StatelessWidget {
    final String assetImagePath;

  // Constructor to receive the asset image path
  const MyRec({super.key, required this.assetImagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 100.0,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            
            Color.fromARGB(255, 114, 192, 161), // Farbe unten rechts
            Color.fromARGB(255, 14, 137, 92), // Farbe oben links
          ],
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Align(
          alignment: Alignment.bottomRight,
          child: FractionallySizedBox(
            widthFactor: 0.6, // Adjust the width factor as needed
            heightFactor: 1, // Adjust the height factor as needed
            child: Image.asset(
              assetImagePath, // Use the provided asset image path
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}