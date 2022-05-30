import 'package:flutter/material.dart';

class LessonThirteenOne extends StatefulWidget {
  static const id = "lesson_thirteen_one";

  const LessonThirteenOne({Key? key}) : super(key: key);

  @override
  State<LessonThirteenOne> createState() => _LessonThirteenOneState();
}

class _LessonThirteenOneState extends State<LessonThirteenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Field",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            enabled: true,
            // icon: Icon(Icons.color_lens),
            // prefixIcon: Icon(Icons.color_lens),
            // suffixIcon: Icon(Icons.color_lens),

            // labelText: "TextField",
            // labelStyle: TextStyle(fontSize: 30, color: Colors.red)
            // label: Image(
            //   height: 50,
            //   image: AssetImage("assets/images/logo.png",),
            // ),

            // hintText: "Text\nField",
            // hintStyle: TextStyle(fontSize: 30),
            // hintMaxLines: 3,

            // prefix: Container(
            //   height: 40,
            //   width: 40,
            //   color: Colors.black,
            // ),
            // prefixText: "Text Field",

            // suffix: Image(
            //   height: 60,
            //   image: AssetImage("assets/images/logo.png"),
            // )

            // floatingLabelAlignment: FloatingLabelAlignment.center,
            // floatingLabelBehavior: FloatingLabelBehavior.auto,

            // helperText: "This is Text Field",

            // errorText: "Error",

            // counterText: "1/8",
            // counterStyle: TextStyle(fontSize: 30)

            // filled: true,

            // focusColor: Colors.purple,
            // hoverColor: Colors.red

            // border: UnderlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
