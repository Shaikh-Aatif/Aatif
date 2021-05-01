import 'package:flutter/material.dart';

class Transition5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition1(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 1')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition2(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 2')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition3(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 3')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition4(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 4')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition5(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 5')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition6(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 6')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, ScaleTransition7(SecondPage())),
              child: Text('TAP TO VIEW SCALE ANIMATION 7')),
        ],
      ),
    );
  }
}

class ScaleTransition1 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition1(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.bottomCenter,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition2 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition2(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.topCenter,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition3 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition3(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.bottomLeft,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition4 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition4(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.bottomRight,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition5 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition5(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.center,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition6 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition6(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.centerRight,
              scale: animation,
              child: child,
            );
          },
        );
}

class ScaleTransition7 extends PageRouteBuilder {
  final Widget page;

  ScaleTransition7(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 1000),
          reverseTransitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return ScaleTransition(
              alignment: Alignment.centerLeft,
              scale: animation,
              child: child,
            );
          },
        );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text('Scale Transition'),
      ),
    );
  }
}
