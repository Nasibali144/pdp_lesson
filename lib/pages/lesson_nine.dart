import 'package:flutter/material.dart';

class LessonNine extends StatefulWidget {
  static const id = "lesson_nine";
  const LessonNine({Key? key}) : super(key: key);

  @override
  State<LessonNine> createState() => _LessonNineState();
}

class _LessonNineState extends State<LessonNine> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("Height: ${MediaQuery.of(context).size.height}");
    print("Width: ${MediaQuery.of(context).size.width}");
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("AppBar"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, size: 30,),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage("assets/images/background.png")
          // )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.home, size: 35, color: Colors.black,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        backgroundColor: Colors.deepPurple,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedIconTheme: IconThemeData(size: 27.5),
        unselectedIconTheme: IconThemeData(size: 24),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade300,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        enableFeedback: true,
        // fixedColor: Colors.red,
        // elevation: 0,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home),
            // tooltip: "Name"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Search",
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "Search",
            activeIcon: Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Search",
            activeIcon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
