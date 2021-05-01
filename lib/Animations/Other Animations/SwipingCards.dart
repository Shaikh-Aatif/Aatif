import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipingCards extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<SwipingCards>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            controller.forward();
          });
        },
        child: CardStack(controller),
      ),
    );
  }
}

class CardStack extends StatefulWidget {
  final AnimationController controller;

  CardStack(this.controller);

  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  Animation<Offset> slideAnimation;
  List<SlideCard> cardList;

  @override
  void initState() {
    super.initState();
    cardList = List.generate(
      5,
      (index) => SlideCard(index),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1, 0.0),
    ).animate(
      CurvedAnimation(
        parent: widget.controller,
        curve: Curves.ease,
      ),
    );
    widget.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.controller.reset();
        setState(
          () => cardList.removeLast(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: cardList.map(
        (item) {
          return Transform.translate(
            offset: Offset(0, -item.index * 5.0),
            child: SlideTransition(
              position: getSlideOffset(item.index),
              child: item,
            ),
          );
        },
      ).toList(),
    );
  }

  getSlideOffset(int cardIndex) {
    if (cardIndex == cardList.length - 1) {
      return slideAnimation;
    } else {
      return AlwaysStoppedAnimation(Offset.zero);
    }
  }
}

class SlideCard extends StatelessWidget {
  final index;

  SlideCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xffFF5050),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: Offset(0, 10),
              )
            ]),
        child: Center(
          child: Text(
            'Card',
            style: TextStyle(color: Colors.white, fontSize: 100),
          ),
        ),
      ),
    );
  }
}
