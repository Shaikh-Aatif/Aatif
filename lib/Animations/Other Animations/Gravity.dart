import 'package:flutter/material.dart';

class Gravity extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Gravity> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.only(bottom: isTapped ? 0 : 400),
                duration: Duration(seconds: 1),
                curve: isTapped ? Curves.bounceOut : Curves.ease,
                height: 150,
                width: 220,
                decoration: BoxDecoration(
                  color: Color(0xffFF4E4E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      blurRadius: 10,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    isTapped ? Icons.arrow_downward : Icons.arrow_upward,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
