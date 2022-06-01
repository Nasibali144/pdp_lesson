import 'package:flutter/material.dart';

class TextFieldTen extends StatefulWidget {
  static const id = "text_field_ten";
  const TextFieldTen({Key? key}) : super(key: key);

  @override
  State<TextFieldTen> createState() => _TextFieldTenState();
}

class _TextFieldTenState extends State<TextFieldTen> {

  GlobalKey key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(

        key: key,
        child: Center(
          child: TextFormField(
            validator: (text) {
              if(text != null && text.length >= 8 && RegExp(text).hasMatch(r'[A-Z0-9a-z]')) {
                return null;
              } else {
                return "Please enter valid password!";
              }
            },
            onFieldSubmitted: (text) {
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              hintText: "Password"
            ),
          ),
        ),
      ),
    );
  }
}
