import 'package:flutter/material.dart';

class TextFieldNine extends StatefulWidget {
  static const id = "/text_field_nine";
  const TextFieldNine({Key? key}) : super(key: key);

  @override
  State<TextFieldNine> createState() => _TextFieldNineState();
}

class _TextFieldNineState extends State<TextFieldNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(22.5)
          ),
          child: const TextField(

            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              // main
              isCollapsed: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              hintText: "TextField",
              border: InputBorder.none
            ),
          ),
        ),
      ),
    );
  }
}
