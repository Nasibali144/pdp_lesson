import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: const Text(
          "Text Field",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: TextField(
          decoration: const InputDecoration(
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

            border: OutlineInputBorder(),

            hintText: "Flutter B17",
          ),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.sentences,
          style: TextStyle(fontSize: 24),
          // strutStyle: StrutStyle(
          //   leading: 0.1
          // ),
          textAlign: TextAlign.end,
          textAlignVertical: TextAlignVertical.bottom,
          // maxLines: 5,
          textDirection: TextDirection.ltr,
          // showCursor: false,
          readOnly: false,
          toolbarOptions: ToolbarOptions(
            copy: true,
            cut: true,
            selectAll: true,
            paste: false
          ),
          autofocus: true,
          // obscureText: true,
          // obscuringCharacter: "\u2665",
          smartDashesType: SmartDashesType.enabled,
          smartQuotesType: SmartQuotesType.disabled,
          // enableSuggestions: false,
          autocorrect: true,
          // minLines: 1,
          // maxLines: 1,
          // maxLength: 6,

          maxLines: null,
          // expands: true,

          // cursorColor: Colors.purple,
          // cursorHeight: 40,
          // cursorWidth: 20,
          // cursorRadius: Radius.circular(30),

          // scribbleEnabled: ,
          restorationId: "Hello",
          autofillHints: ["Flutter", "B17", "Group"],
          selectionControls: CupertinoTextSelectionControls(),
          keyboardAppearance: Brightness.light,
        ),
      ),
    );
  }
}
