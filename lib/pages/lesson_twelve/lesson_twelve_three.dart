import 'package:flutter/material.dart';

class LessonTwelveThree extends StatefulWidget {
  static const id = "/lesson_twelve_three";
  const LessonTwelveThree({Key? key}) : super(key: key);

  @override
  State<LessonTwelveThree> createState() => _LessonTwelveThreeState();
}

class _LessonTwelveThreeState extends State<LessonTwelveThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // physics: ,
        children: [
          Container(
            height: 200,
            color: Colors.teal,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                color: Colors.blue,
              ),
            ],
          ),

          Container(
            height: 200,
            color: Colors.teal,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
