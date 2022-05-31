import 'package:flutter/material.dart';

class TextFieldThree extends StatefulWidget {
  static const id = "text_field_three";
  const TextFieldThree({Key? key}) : super(key: key);

  @override
  State<TextFieldThree> createState() => _TextFieldThreeState();
}

class _TextFieldThreeState extends State<TextFieldThree> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data, style: TextStyle(fontSize: 30),),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "TextField"
              ),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              onSubmitted: (text) {
                setState((){
                  data = text;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
