import 'package:flutter/material.dart';
import 'package:flutter_application_3/files/Loading.dart';
import 'package:flutter_application_3/files/Videos.dart';
import 'package:flutter_application_3/files/explore.dart';
import 'package:flutter_application_3/files/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Explore(),
    Videos(),
    Profile(),
    LoadingAnim(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sanjyaaaaa"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        fixedColor: Colors.blue,
        backgroundColor: Colors.blue,
        // fixedColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "sddf"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "sddf"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "sddf"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "sddf"),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
