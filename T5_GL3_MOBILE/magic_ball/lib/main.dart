import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numBall = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 4, 41, 76),
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Magic Bull',
                style: TextStyle(fontFamily: 'Mono', fontSize: 20),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 9, 24, 57),
          ),
          body: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  numBall = Random().nextInt(5) + 1;
                });
              },
              child: Image(image: AssetImage('assets/ball$numBall.png')),
            ),
          )),
    );
  }
}
