import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LessonElevenTwo extends StatefulWidget {
  static const id = "/lesson_eleven_two";
  const LessonElevenTwo({Key? key}) : super(key: key);

  @override
  State<LessonElevenTwo> createState() => _LessonElevenTwoState();
}

class _LessonElevenTwoState extends State<LessonElevenTwo> {
  late ScrollController controller;

  @override
  initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(addListener);
  }

  void addListener () {
    if(controller.position.maxScrollExtent == controller.position.pixels) {
      print(controller.position.maxScrollExtent);
      print(controller.position.pixels);
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        // dragStartBehavior: DragStartBehavior.down,
        // physics: AlwaysScrollableScrollPhysics(),
        // primary: true,
        // padding: EdgeInsets.all(10),
        // scrollDirection: Axis.vertical,
        // reverse: true,
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.red,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.green,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.yellow,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
