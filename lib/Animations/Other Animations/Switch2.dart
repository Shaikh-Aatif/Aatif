import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switch2 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<Switch2>
    with TickerProviderStateMixin {
  bool isChecked = false;
  Duration _duration = Duration(milliseconds: 370);
  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _duration);
    _animation =
        AlignmentTween(begin: Alignment.centerLeft, end: Alignment.centerRight)
            .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeIn,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Center(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(
                    () {
                      if (_animationController.isCompleted) {
                        _animationController.reverse();
                      } else {
                        _animationController.forward();
                      }
                      isChecked = !isChecked;
                    },
                  );
                },
                child: Container(
                  width: 100,
                  height: 50,
                  padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
                  decoration: BoxDecoration(
                    color: isChecked ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(99),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isChecked
                            ? Colors.green.withOpacity(0.6)
                            : Colors.red.withOpacity(0.6),
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: _animation.value,
                        child: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                if (_animationController.isCompleted) {
                                  _animationController.reverse();
                                } else {
                                  _animationController.forward();
                                }
                                isChecked = !isChecked;
                              },
                            );
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
