import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LessonTwelveTwo extends StatefulWidget {
  static const id = "/lesson_twelve_two";
  const LessonTwelveTwo({Key? key}) : super(key: key);

  @override
  State<LessonTwelveTwo> createState() => _LessonTwelveTwoState();
}

class _LessonTwelveTwoState extends State<LessonTwelveTwo> {

  int _currentPage = 0;
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        // reverse: true,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        // dragStartBehavior: DragStartBehavior.down,
        // allowImplicitScrolling: true,
        // scrollBehavior: MaterialScrollBehavior(
        //   androidOverscrollIndicator: AndroidOverscrollIndicator.stretch
        // ),

        onPageChanged: (index) {
          setState((){
            _currentPage = index;
          });
        },
        padEnds: true,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          setState((){
            _currentPage = index;
            // _controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.linear);
            _controller.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: "Like"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: "Profile"
          ),
        ],
      ),
    );
  }
}
