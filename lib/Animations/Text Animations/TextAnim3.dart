import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Text3 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Text3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
      ),
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText(
              'Fade First',
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ScaleAnimatedText(
              'Then Scale',
              textStyle: TextStyle(
                fontSize: 70,
                fontFamily: 'Canterbury',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
