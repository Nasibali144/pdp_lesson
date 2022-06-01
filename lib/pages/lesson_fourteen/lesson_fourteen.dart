import 'package:flutter/material.dart';

class LessonFourTeen extends StatefulWidget {
  static const id = "lesson_four_teen";
  const LessonFourTeen({Key? key}) : super(key: key);

  @override
  State<LessonFourTeen> createState() => _LessonFourTeenState();
}

class _LessonFourTeenState extends State<LessonFourTeen> {
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              onDestinationSelected: (index) {
                setState((){
                  _selectedItem = index;
                });
              },
              backgroundColor: Colors.white,
              destinations: [
                NavigationRailDestination(
                  selectedIcon: Icon(Icons.favorite),
                  icon: Icon(Icons.favorite_outline),
                  label: Text("Like"),
                ),
                NavigationRailDestination(
                  selectedIcon: Icon(Icons.bookmark),
                    icon: Icon(Icons.bookmark_outline),
                    label: Text("Bookmark")
                ),
                NavigationRailDestination(
                    selectedIcon: Icon(Icons.star),
                    icon: Icon(Icons.star_outline),
                    label: Text("Star")
                ),
              ],
              selectedIndex: _selectedItem,
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
