// import this Package in pubspec.yaml file
// dependencies:
//
//   flutter_staggered_animations: ^1.0.0

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/Animations/IconAnimations.dart/IconAnimatoin.dart';
import 'package:flutter_application_3/Animations/Text%20Animations/TextAnim1.dart';
import 'package:flutter_application_3/Animations/Text%20Animations/TextAnim2.dart';
import 'package:flutter_application_3/Animations/Text%20Animations/TextAnim3.dart';
import 'package:flutter_application_3/files/ButtonAnim.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Button Animations'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ButtonPage(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Icon Animations'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IconAnimation1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Resposnsive Icon'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IconAnimation1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Text Animation 1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Text1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Text Animation 2'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Text2(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Text Animation 3'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Text3(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
