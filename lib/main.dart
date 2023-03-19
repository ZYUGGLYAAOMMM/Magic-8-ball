import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blue,
          ),
          body: BallPage(),
        )
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;


  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(onPressed: () {
          changeBallFace();
        },
            child: Image.asset('images/ball$ballNumber.png')),),
    );
  }}