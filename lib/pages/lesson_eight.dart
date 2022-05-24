import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonEight extends StatefulWidget {
  static const id = "lesson_eight";
  const LessonEight({Key? key}) : super(key: key);

  @override
  State<LessonEight> createState() => _LessonEightState();
}

class _LessonEightState extends State<LessonEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons"),
      ),
      // body: const Center(
      //   child: Icon(
      //       CupertinoIcons.arrow_right_arrow_left,
      //     size: 150,
      //     color: Colors.blueGrey,
      //     semanticLabel: "Sun",
      //     textDirection: TextDirection.ltr,
      //     shadows: [
      //       Shadow(
      //         color: Colors.deepOrange,
      //         offset: Offset(30, 30),
      //         blurRadius: 30
      //       )
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: FlutterLogo(
      //     size: 150,
      //     textColor: Colors.deepOrange,
      //     style: FlutterLogoStyle.stacked,
      //   ),
      // ),

      // body: Center(
      //   child: Placeholder(
      //     fallbackHeight: 200,
      //     fallbackWidth: 300,
      //     strokeWidth: 15,
      //     color: Colors.deepPurpleAccent,
      //     child: Container(
      //       height: 200,
      //       width: 300,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       primary: Colors.deepPurple,
      //       elevation: 30,
      //       surfaceTintColor: Colors.amberAccent,
      //       // onPrimary: Colors.green,
      //       // onSurface: Colors.green,
      //       // enableFeedback: true,
      //       // shadowColor: Colors.red,
      //       // textStyle: TextStyle(
      //       //   fontSize: 24,
      //       // ),
      //       // padding: EdgeInsets.all(30),
      //       // minimumSize: Size(50, 50),
      //       // maximumSize: Size(325, 250),
      //       fixedSize: Size(300, 200),
      //       // side: BorderSide(color: Colors.black),
      //       // shape: StadiumBorder()
      //       // shape: BeveledRectangleBorder(
      //       //   borderRadius: BorderRadius.circular(20)
      //       // )
      //       // shape: ContinuousRectangleBorder(
      //       //     borderRadius: BorderRadius.circular(100)
      //       // ),
      //       // shape: CircleBorder(),
      //       // enabledMouseCursor: MouseCursor.defer,
      //       // disabledMouseCursor: MouseCursor.uncontrolled
      //       // visualDensity: VisualDensity.comfortable,
      //       // tapTargetSize: MaterialTapTargetSize.padded,
      //       // animationDuration: Duration(milliseconds: 200),
      //       splashFactory: NoSplash.splashFactory
      //     ),
      //     onPressed: () {
      //       print("On Pressed");
      //     },
      //     onLongPress: () {
      //       print("On Long Pressed");
      //     },
      //     // onFocusChange: (value) {
      //     //   print("Focus: $value");
      //     // },
      //     onHover: (value) {
      //       print("object: $value");
      //     },
      //
      //     autofocus: true,
      //     child: Text("Button",/* style: TextStyle(color: Colors.greenAccent,),*/),
      //   ),
      // ),
      // body: ElevatedButton.,
    );
  }
}
