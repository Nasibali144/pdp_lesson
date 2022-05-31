import 'package:flutter/material.dart';
import 'package:pdp_lesson/pages/lesson_eight.dart';
import 'package:pdp_lesson/pages/lesson_eleven.dart';
import 'package:pdp_lesson/pages/lesson_eleven_one.dart';
import 'package:pdp_lesson/pages/lesson_eleven_three.dart';
import 'package:pdp_lesson/pages/lesson_eleven_two.dart';
import 'package:pdp_lesson/pages/lesson_nine.dart';
import 'package:pdp_lesson/pages/lesson_ten.dart';
import 'package:pdp_lesson/pages/lesson_thirteen/lesson_thirteen.dart';
import 'package:pdp_lesson/pages/lesson_thirteen/lesson_thirteen_one.dart';
import 'package:pdp_lesson/pages/lesson_twelve/lesson_twelve_one.dart';
import 'package:pdp_lesson/pages/lesson_twelve/lesson_twelve_three.dart';
import 'package:pdp_lesson/pages/lesson_twelve/lesson_twelve_two.dart';
import 'package:pdp_lesson/pages/page_list.dart';
import 'package:pdp_lesson/pages/text_field/text_field_five.dart';
import 'package:pdp_lesson/pages/text_field/text_field_four.dart';
import 'package:pdp_lesson/pages/text_field/text_field_one.dart';
import 'package:pdp_lesson/pages/text_field/text_field_six.dart';
import 'package:pdp_lesson/pages/text_field/text_field_three.dart';
import 'package:pdp_lesson/pages/text_field/text_field_two.dart';

import 'pages/text_field/text_field_eight.dart';
import 'pages/text_field/text_field_seven.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // tabBarTheme: TabBarTheme(
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   indicator: BoxDecoration(
        //     color: Colors.purple
        //   ),
        // ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500)
        )
      ),
      home: TextFieldEight(),
      routes: {
        LessonEight.id: (context) => LessonEight(),
        LessonNine.id: (context) => LessonNine(),
        LessonTen.id: (context) => LessonTen(),
        ListPage.id: (context) => ListPage(),
        LessonEleven.id: (context) => LessonEleven(),
        LessonElevenOne.id: (context) => LessonElevenOne(),
        LessonElevenTwo.id: (context) => LessonElevenTwo(),
        LessonElevenThree.id: (context) => LessonElevenThree(),
        LessonTwelveOne.id: (context) => LessonTwelveOne(),
        LessonTwelveTwo.id: (context) => LessonTwelveTwo(),
        LessonTwelveThree.id: (context) => LessonTwelveThree(),
        LessonThirteen.id: (context) => LessonThirteen(),
        LessonThirteenOne.id: (context) => LessonThirteenOne(),
        TextFieldOne.id: (context) => TextFieldOne(),
        TextFieldTwo.id: (context) => TextFieldTwo(),
        TextFieldThree.id: (context) => TextFieldThree(),
        TextFieldFour.id: (context) => TextFieldFour(),
        TextFieldFive.id: (context) => TextFieldFive(),
        TextFieldSix.id: (context) => TextFieldSix(),
        TextFieldSeven.id: (context) => TextFieldSeven(),
        TextFieldEight.id: (context) => TextFieldEight(),
      },
    );
  }
}