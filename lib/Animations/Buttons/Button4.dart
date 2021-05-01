import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Button4 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Button4> {
  final RoundedLoadingButtonController _btnController =
      new RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(
      Duration(seconds: 3),
      () {
        _btnController.success();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundedLoadingButton(
          child: Text('Tap me!', style: TextStyle(color: Colors.white)),
          controller: _btnController,
          onPressed: _doSomething,
        ),
      ),
    );
  }
}
