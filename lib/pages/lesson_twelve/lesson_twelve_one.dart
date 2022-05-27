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

class _LessonTwelveOneState extends State<LessonTwelveOne> {

   Future customBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      // anchorPoint: Offset(0.5, 0.5),
      context: context,
      constraints: BoxConstraints.expand(),
      builder: (context) {
        return Container(
          clipBehavior: Clip.antiAlias,
          height: MediaQuery.of(context).size.height,
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
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              child: const Text("BottomSheet"),
              onPressed: () {
                // Utils.customDialog(
                //   context: context,
                //   title: "Are you going to be Flutter Developer?",
                //   content: "Still early?",
                //   onPressed: () {
                //     print("Hali Bor");
                //     Navigator.pop(context);
                //   },
                // );

                customBottomSheet(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}