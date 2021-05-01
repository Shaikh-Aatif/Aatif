import 'dart:async';
import 'package:flutter/material.dart';

class Text1 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SlideFadeTransition(
              curve: Curves.elasticOut,
              delayStart: Duration(milliseconds: 500),
              animationDuration: Duration(milliseconds: 1200),
              offset: 2.5,
              direction: Direction.horizontal,
              child: Text(
                'Hello! I\'m gonna animate.',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            SlideFadeTransition(
              curve: Curves.elasticOut,
              delayStart: Duration(milliseconds: 1000),
              animationDuration: Duration(milliseconds: 1200),
              offset: 2.5,
              direction: Direction.vertical,
              child: Text(
                'Hello! I\'m gonna animate.',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            SlideFadeTransition(
              delayStart: Duration(milliseconds: 1000),
              animationDuration: Duration(milliseconds: 700),
              child: Text(
                'Hello! I\'m gonna animate.\nHello! I\'m gonna animate.',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SlideFadeTransition(
              curve: Curves.elasticOut,
              delayStart: Duration(milliseconds: 1800),
              animationDuration: Duration(milliseconds: 1200),
              offset: -2.5,
              direction: Direction.vertical,
              child: Text(
                'Hello! I\'m gonna animate.',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            SlideFadeTransition(
              delayStart: Duration(milliseconds: 2300),
              animationDuration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              offset: 5,
              child: Text(
                'Hello! I\'m gonna animate.\nHello! I\'m gonna animate.',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Direction { vertical, horizontal }

class SlideFadeTransition extends StatefulWidget {
  final Widget child;

  final double offset;

  final Curve curve;

  final Direction direction;

  final Duration delayStart;

  final Duration animationDuration;

  SlideFadeTransition({
    @required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  });

  @override
  _SlideFadeTransitionState createState() => _SlideFadeTransitionState();
}

class _SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  Animation<Offset> _animationSlide;

  AnimationController _animationController;

  Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    if (widget.direction == Direction.vertical) {
      _animationSlide =
          Tween<Offset>(begin: Offset(0, widget.offset), end: Offset(0, 0))
              .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    } else {
      _animationSlide =
          Tween<Offset>(begin: Offset(widget.offset, 0), end: Offset(0, 0))
              .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    }

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

    Timer(widget.delayStart, () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}
