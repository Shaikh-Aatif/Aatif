import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Button1> {
  bool isPressed = true;
  bool isPressed2 = true;
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              },
              child: AnimatedContainer(
                height: 50,
                width: 50,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(isPressed ? 0.2 : 0.0),
                      blurRadius: 20,
                      offset: Offset(5, 10),
                    ),
                  ],
                  color:
                      isPressed ? Colors.white : Colors.black.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite,
                  color: isPressed
                      ? Colors.black.withOpacity(0.7)
                      : Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onHighlightChanged: (value) {
                setState(() {
                  isHighlighted = !isHighlighted;
                });
              },
              onTap: () {
                setState(() {
                  isPressed2 = !isPressed2;
                });
              },
              child: AnimatedContainer(
                margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
                height: isHighlighted ? 50 : 45,
                width: isHighlighted ? 50 : 45,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20,
                      offset: Offset(5, 10),
                    ),
                  ],
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: isPressed2
                    ? Icon(
                        Icons.favorite_border,
                        color: Colors.black.withOpacity(0.6),
                      )
                    : Icon(
                        Icons.favorite,
                        color: Colors.pink.withOpacity(1.0),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
