import 'package:flutter/material.dart';

class LessonEleven extends StatefulWidget {
  static const id = "/lesson_eleven";
  const LessonEleven({Key? key}) : super(key: key);

  @override
  State<LessonEleven> createState() => _LessonElevenState();
}

class _LessonElevenState extends State<LessonEleven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Scaffold"),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text("Open Drawer"),
            );
          }
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).closeDrawer();
                },
                child: const Text("Close Drawer"),
              );
            }
          ),
        ),
      ),
    );
  }
}
