import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 4, 59, 141),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 4, 59, 141),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      rightdiceNumber = Random().nextInt(6) + 1;
      leftdiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          //flex:1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('assets/dice$leftdiceNumber.png')),
          ),
        ),
        /*Spacer(
          flex:2
        ),*/
        Expanded(
          //flex:1,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image(
                image: AssetImage('assets/dice$rightdiceNumber.png'),
                //width:150.0
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
