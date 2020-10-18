import 'package:MusicApp/pages/PageFour.dart';
import 'package:MusicApp/pages/PageOne.dart';
import 'package:MusicApp/pages/PageThree.dart';
import 'package:MusicApp/pages/PageTwo.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentIndex = 0;
  final pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.message),
          label: 'Message',
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.contact_phone),
          label: 'Contact',
        ),

        BottomNavigationBarItem(
          backgroundColor: Colors.purple,
          icon: Icon(Icons.call),
          label: 'Call',
        ),

      ],
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      ),

       body :pages[_currentIndex],
    );
  }
}


