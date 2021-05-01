import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

class Button3 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Button3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProgressButton(
          defaultWidget: const Text('Tap here!'),
          progressWidget: const CircularProgressIndicator(),
          width: 200,
          height: 40,
          borderRadius: 50,
          onPressed: () async {
            int score = await Future.delayed(
                const Duration(milliseconds: 3000), () => 42);
            return () {};
          },
        ),
      ),
    );
  }
}
