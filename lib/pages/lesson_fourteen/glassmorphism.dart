import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatefulWidget {
  const Glassmorphism({Key? key}) : super(key: key);

  @override
  State<Glassmorphism> createState() => _GlassmorphismState();
}

class _GlassmorphismState extends State<Glassmorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFF12711),
              Color(0xFFF5AF19),
            ]
          )
        ),
        child: Stack(
          children: [
            Center(
              child: Text("Flutter B17 Group", style: TextStyle(
                  fontSize: 60,
                  color: Colors.white
              ),),
            ),

            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.5,
                    sigmaY: 4.5,
                  ),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.1)
                        )
                      ],
                      border: Border.all(
                        color: Colors.white.withOpacity(0.31),
                        width: 1,
                      )
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
