import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Switch1 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Switch1>
    with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            setState(
              () {
                isTapped = !isTapped;
                HapticFeedback.lightImpact();
              },
            );
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastLinearToSlowEaseIn,
            height: isTapped ? 64 : 67,
            width: isTapped ? 190 : 200,
            decoration: BoxDecoration(
              color: isTapped ? Color(0xffB23F3F) : Color(0xffFF4E4E),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isTapped ? 0 : 0.3),
                  blurRadius: isTapped ? 0 : 10,
                  offset: Offset(0, 7),
                ),
              ],
            ),
            child: Center(
              child: Text(
                isTapped ? 'OFF' : 'ON',
                style: TextStyle(
                  color: isTapped
                      ? Colors.white.withOpacity(0.5)
                      : Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
