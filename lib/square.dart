import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String assetImagePath;
  final String text;

  // Constructor to receive the asset image path
  const MySquare({
    Key? key,
    required this.assetImagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 52, 0, 0),
          height: 250,
          child: Container(
            // alignment: Alignment.bottomRight,

            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF96B6D3), // Farbe unten rechts
                  Color(0xFF547BA0), // Farbe oben links
                ],
              ),
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(
                      5, 5), // Ändere dies für die Position des Schattens
                ),
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    assetImagePath,
                    fit: BoxFit.fill,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(22, 22, 0, 0),
                  child: Text(
                    'Holiday Delicacies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            'assets/mini_star.png',
            height: 80,
          ),
        ),
      ],
    );
  }
}



//       child: Center(
//         child: Align(
//           alignment: Alignment.bottomRight,
//           child: FractionallySizedBox(
//             widthFactor: 0.8, // Adjust the width factor as needed
//             heightFactor: 0.8, // Adjust the height factor as needed
//             child: Image.asset(
//               assetImagePath, // Use the provided asset image path
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
