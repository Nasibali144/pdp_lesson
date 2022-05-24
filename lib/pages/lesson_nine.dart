import 'package:flutter/material.dart';

class LessonNine extends StatefulWidget {
  static const id = "lesson_nine";
  const LessonNine({Key? key}) : super(key: key);

  @override
  State<LessonNine> createState() => _LessonNineState();
}

class _LessonNineState extends State<LessonNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Center(
        child: Text('Scaffold', style: TextStyle(fontSize: 45),),
      ),
    );
  }
}
