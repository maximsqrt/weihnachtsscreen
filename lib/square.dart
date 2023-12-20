import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String assetImagePath;

  // Constructor to receive the asset image path
  const MySquare({Key? key, required this.assetImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
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
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          assetImagePath,
          fit: BoxFit.cover,
        ),
      ),
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
