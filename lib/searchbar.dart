import 'package:flutter/material.dart';

Widget buildSearchBar(double itemSpacing) {
  return Row(
    children: [
    
      SizedBox(width: itemSpacing),
Transform.scale(
  scale: .7, // Adjust the scale factor as needed
  child: Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: IconButton(
      icon: const Icon(Icons.favorite),
      onPressed: () {
        // Handle heart icon press if needed
      },
    ),
  ),
),

     SizedBox(width: itemSpacing),
Container(
  width: 200.0, // Adjust the width as needed
  padding: const EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Row(
    children: [
      const Icon(Icons.search),
      const SizedBox(width: 1.0), // Adjust as needed
      const Text(
        'Search',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    ],
  ),
),

      SizedBox(width: itemSpacing),
      Container(
        child: IconButton(
          color: Color.fromARGB(255, 255, 255, 255),
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle bell icon press if needed
          },
        ),
      ),
      SizedBox(width: itemSpacing),
      CircleAvatar(
        backgroundImage: AssetImage('assets/kai.png'),
        radius: 20.0,
      ),
    ],
  );
}

/*import 'package:flutter/material.dart';

Widget buildSearchBar(double itemSpacing) {
  return Row(
    children: [
      SizedBox(width: itemSpacing),
      Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.search),
            const SizedBox(width: 8.0), // Adjust as needed
            const Text(
              'Search',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: itemSpacing),
      Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            // Handle heart icon press if needed
          },
        ),
      ),
      SizedBox(width: itemSpacing),
      Container(
        child: IconButton(
          color: Color.fromARGB(255, 255, 255, 255),
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle bell icon press if needed
          },
        ),
      ),
      SizedBox(width: itemSpacing),
      CircleAvatar(
        backgroundImage: AssetImage('assets/kai.png'),
        radius: 20.0,
      ),
    ],
  );
}
 */