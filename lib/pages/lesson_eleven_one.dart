import 'package:flutter/material.dart';

class LessonElevenOne extends StatefulWidget {
  static const id = "/lesson_eleven_one";
  const LessonElevenOne({Key? key}) : super(key: key);

  @override
  State<LessonElevenOne> createState() => _LessonElevenOneState();
}

class _LessonElevenOneState extends State<LessonElevenOne> with SingleTickerProviderStateMixin{
  GlobalKey<ScaffoldState> key = GlobalKey();
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this, value: 600);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      key: key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Learn Scaffold"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 100),
        child: ElevatedButton(
          onPressed: () {
            key.currentState?.openDrawer();
          },
          child: const Text("Open Drawer"),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              key.currentState?.closeDrawer();
            },
            child: const Text("Close Drawer"),
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        animationController: controller,
        elevation: 0,
        onClosing: () {},
        backgroundColor: Colors.blueGrey[700],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50))
        ),
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * .6,
          );
        },
      ),
    );
  }
}
