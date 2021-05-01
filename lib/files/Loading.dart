import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Animations/Loading%20Animations/Loading1.dart';
import 'package:flutter_application_3/Animations/Loading%20Animations/Loading2.dart';
import 'package:flutter_application_3/Animations/Loading%20Animations/Loading3.dart';

class LoadingAnim extends StatefulWidget {
  @override
  _LoadingAnimState createState() => _LoadingAnimState();
}

class _LoadingAnimState extends State<LoadingAnim> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loading1(),
                ));
          },
          child: Text("Loading 1"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loading2(),
                ));
          },
          child: Text("Loading 2"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loading3(),
                ));
          },
          child: Text("Loading 3"),
        ),
      ],
    );
  }
}
