import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LessonThirteen extends StatefulWidget {
  static const id = "lesson_thirteen";

  const LessonThirteen({Key? key}) : super(key: key);

  @override
  State<LessonThirteen> createState() => _LessonThirteenState();
}

class _LessonThirteenState extends State<LessonThirteen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // primary: false,
        toolbarHeight: 0,
        // title: Text(
        //   "TabBar",
        //   style: TextStyle(color: Colors.white),
        // ),
        bottom: TabBar(
          // padding: EdgeInsets.all(20),
          // isScrollable: true,
          indicatorColor: Colors.white,
          automaticIndicatorColorAdjustment: false,
          // indicatorWeight: 1,
          dragStartBehavior:  DragStartBehavior.start,
          controller: _controller,
          tabs: const [
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
              // child: Container(color: Colors.red, height: 10, width: 45,),
            ),
            Tab(
              text: "Search",
              icon: Icon(Icons.search),
            ),
            Tab(
              text: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
      body: TabBarView(
        dragStartBehavior: DragStartBehavior.down,
        controller: _controller,
        children: [
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
