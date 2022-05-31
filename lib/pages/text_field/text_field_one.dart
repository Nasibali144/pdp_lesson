import 'package:flutter/material.dart';

class TextFieldOne extends StatefulWidget {
  static const id = "text_field_one";
  const TextFieldOne({Key? key}) : super(key: key);

  @override
  State<TextFieldOne> createState() => _TextFieldOneState();
}

class _TextFieldOneState extends State<TextFieldOne> {

  String gender = "Gender";

  void _show(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              onTap: () {
                setState((){
                  gender = "Male";
                });
                Navigator.pop(context);
              },
              title: Text("Male",),
            ),
            ListTile(
              onTap: () {
                setState((){
                  gender = "Famale";
                });
                Navigator.pop(context);
              },
              title: Text("Famale"),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: gender
            ),
            style: const TextStyle(fontSize: 35),
            onTap: () {
              print("On Tapped");
              _show(context);
            },
          ),
        ),
      ),
    );
  }
}
