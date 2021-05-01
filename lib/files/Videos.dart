import 'package:flutter/material.dart';
import 'package:flutter_application_3/Animations/Other%20Animations/DialogAnim.dart';
import 'package:flutter_application_3/Animations/SplashScreen/SplashScreen1.dart';
import 'package:flutter_application_3/Animations/Transitions/Transistion4.dart';
import 'package:flutter_application_3/Animations/Transitions/Transition1.dart';
import 'package:flutter_application_3/Animations/Transitions/Transition2.dart';
import 'package:flutter_application_3/Animations/Transitions/Transition3.dart';
import 'package:flutter_application_3/Animations/Transitions/Transition5.dart';
import 'package:flutter_application_3/Animations/Transitions/Transition6.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Videos'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Transition 1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Transition 2'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition2(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Transition 3'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition3(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Transition 4'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition4(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Transition 5'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition5(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Transition 6'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Transition6(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('SplashScreen1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Splash1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Dialog Animations'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dialog1(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
