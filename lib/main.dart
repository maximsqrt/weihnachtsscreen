import 'package:flutter/material.dart';
import 'package:jpscreen/square.dart';
import 'package:jpscreen/rectangle.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
//Umänderung
  @override
  Widget build(BuildContext context) {
    const double itemSpacing = 16.0;
    const double titleSpacing = 200.0;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/branch_BG.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: titleSpacing),
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                  child: Text(
                    'Pastries',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 40.0),
                  child: Text(
                    '5 Delicacies available',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 122, 122, 122),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: itemSpacing),
                      MySquare(assetImagePath: 'assets/yule_cake.png'),
                      SizedBox(width: itemSpacing),
                      MySquare(assetImagePath: 'assets/mince_pie.png'),
                      SizedBox(width: itemSpacing),
                      MySquare(assetImagePath: 'assets/cup_cake.png'),
                      SizedBox(width: itemSpacing),
                      MySquare(assetImagePath: 'assets/gingerbread_man.png'),
                    ],
                  ),
                ),
                SizedBox(height: titleSpacing / 2),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Explore Christmas', // Add a title for the second SingleChildScrollView
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: itemSpacing),
                      MyRec(assetImagePath: 'assets/santa.png'),
                      SizedBox(width: itemSpacing),
                      MyRec(assetImagePath: 'assets/sleigh.png'),
                      SizedBox(width: itemSpacing),
                      MyRec(assetImagePath: 'assets/snowball.png'),
                      SizedBox(width: itemSpacing),
                      MyRec(assetImagePath: 'assets/glove.png'),
                      SizedBox(width: itemSpacing),
                      MyRec(assetImagePath: 'assets/party.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
