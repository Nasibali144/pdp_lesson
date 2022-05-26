import 'package:flutter/material.dart';

class LessonElevenThree extends StatefulWidget {
  static const id = "/lesson_eleven_three";
  const LessonElevenThree({Key? key}) : super(key: key);

  @override
  State<LessonElevenThree> createState() => _LessonElevenThreeState();
}

class _LessonElevenThreeState extends State<LessonElevenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        // reverse: true,
        primary: false,
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ),
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.blue,
          // ),
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.green,
          // ),
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.yellow,
          // ),
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.brown,
          // ),
        ],
      ),
    );
  }
}
