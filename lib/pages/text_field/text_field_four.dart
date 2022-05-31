import 'package:flutter/material.dart';

class TextFieldFour extends StatefulWidget {
  static const id = "text_field_four";
  const TextFieldFour({Key? key}) : super(key: key);

  @override
  State<TextFieldFour> createState() => _TextFieldFourState();
}

class _TextFieldFourState extends State<TextFieldFour> {
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
              decoration: const InputDecoration(
                  hintText: "TextField"
              ),
              style: const TextStyle(fontSize: 35),
              textInputAction: TextInputAction.send,
              /// Hammada datalarni olib ish tugagandan so'ng bajarilishi kerak bo'lgan funksiya
              onEditingComplete: (){
                print("Compelled");
              },

              /// ?
              // onAppPrivateCommand: (text, map){
              //   print("text: $text");
              //   print("map: $map");
              // },
            ),
          ),
        ],
      ),
    );
  }
}
