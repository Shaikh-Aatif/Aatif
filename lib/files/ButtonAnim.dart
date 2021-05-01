import 'package:flutter/material.dart';
import 'package:flutter_application_3/Animations/Buttons/Button1.dart';
import 'package:flutter_application_3/Animations/Buttons/Button2.dart';
import 'package:flutter_application_3/Animations/Buttons/Button3.dart';
import 'package:flutter_application_3/Animations/Buttons/Button4.dart';
import 'package:flutter_application_3/Animations/Buttons/button5.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Button1'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Button1(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Button2'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Button2(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Button3(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Button 4'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Button4(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text('Button 5'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Button5(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
