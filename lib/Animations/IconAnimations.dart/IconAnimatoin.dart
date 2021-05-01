import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconAnimation1 extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<IconAnimation1>
    with TickerProviderStateMixin {
  bool expanded = true;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.view_list, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.pause_play, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_close, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.add_event, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.close_menu, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.add_event, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.event_add, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_arrow, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.play_pause, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.list_view, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.home_menu, progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.ellipsis_search,
                      progress: controller),
                  onPressed: () {
                    setState(() {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    });
                  }),
              IconButton(
                icon: AnimatedIcon(
                    icon: AnimatedIcons.search_ellipsis, progress: controller),
                onPressed: () {
                  setState(
                    () {
                      expanded ? controller.forward() : controller.reverse();
                      expanded = !expanded;
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
