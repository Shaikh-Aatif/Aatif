import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Text2 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            isRepeatingAnimation: true,
            animatedTexts: [
              FadeAnimatedText('do IT!'),
              FadeAnimatedText('do it RIGHT!!'),
              FadeAnimatedText('do it RIGHT NOW!!!'),
            ],
          ),
        ),
      ),
    );
  }
}
