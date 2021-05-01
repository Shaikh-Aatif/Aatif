import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class FabAnim extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<FabAnim> {
  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FabCircularMenu(
        alignment: Alignment.bottomRight,
        fabColor: Colors.white,
        fabElevation: 20.0,
        ringWidth: 100,
        ringColor: Color(0xff171B70).withOpacity(0.5),
        ringDiameter: 400,
        fabOpenIcon: Icon(
          Icons.format_list_bulleted,
          color: Colors.black,
          size: width / 17,
        ),
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('Home');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('Search');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('Favorite');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('User');
            },
          ),
        ],
      ),
    );
  }
}
