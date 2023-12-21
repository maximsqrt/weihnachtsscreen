import 'package:flutter/material.dart';

class XmasDrawer extends StatelessWidget {
  const XmasDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(),
        image: DecorationImage(
          image: AssetImage('candy_BG.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'kai.png',
          ),
          const Column(
            children: [
              Text(
                "Sants's Best friend since 2023",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 97, 97, 97)),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                // Weitere ListTile-Elemente hinzufügen
              ],
            ),
          ),
        ],
      ),
    );
  }
}
                    
                 

              
//       body: Column(
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             color: Colors.blue,
//             child: const Row(
//               children: [
//                 Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                 ),
//                 SizedBox(width: 16.0),
//                 Text(
//                   'Drawer Header',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 ListTile(
//                   title: Text('Item 1'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('Item 2'),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 // Weitere ListTile-Elemente hinzufügen
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
