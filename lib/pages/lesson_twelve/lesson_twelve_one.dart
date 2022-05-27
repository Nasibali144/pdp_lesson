import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdp_lesson/services/util_service.dart';

class LessonTwelveOne extends StatefulWidget {
  static const id = "lesson_twelve_one";
  const LessonTwelveOne({Key? key}) : super(key: key);

  @override
  State<LessonTwelveOne> createState() => _LessonTwelveOneState();
}

class _LessonTwelveOneState extends State<LessonTwelveOne>{

   Future customBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .5,
        // minHeight: MediaQuery.of(context).size.height * .7,
      ),
      builder: (context) {
        return Container(
          clipBehavior: Clip.antiAlias,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: GridView(
        padding: EdgeInsets.all(10),
        primary: false,
        shrinkWrap: true,
        // reverse: true,
        semanticChildCount: 4,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2 / 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          GridTile(
            header: Container(
              height: 20,
              color: Colors.blue,
              child: Text("Flutter"),
            ),
            child: Container(
              color: Colors.red,
            ),
            footer: Container(
              height: 20,
              color: Colors.yellow,
            ),
          ),
          GridTile(
            header: Container(
              height: 20,
              color: Colors.blue,
              child: Text("Flutter"),
            ),
            child: Container(
              color: Colors.red,
            ),
            footer: Container(
              height: 20,
              color: Colors.yellow,
            ),
          ),
          GridTile(
            header: Container(
              height: 20,
              color: Colors.blue,
              child: Text("Flutter"),
            ),
            child: Container(
              color: Colors.red,
            ),
            footer: Container(
              height: 20,
              color: Colors.yellow,
            ),
          ),
          GridTile(
            header: Container(
              height: 20,
              color: Colors.blue,
              child: Text("Flutter"),
            ),
            child: Container(
              color: Colors.red,
            ),
            footer: Container(
              height: 20,
              color: Colors.yellow,
            ),
          ),
          GridTile(
            header: Container(
              height: 20,
              color: Colors.blue,
              child: Text("Flutter"),
            ),
            child: Container(
              color: Colors.red,
            ),
            footer: Container(
              height: 20,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
