import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                randoDice();
                print('Left button pressed');
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png', /* using $variable is string interpolation */
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randoDice();
                print('Right button pressed');
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png', /* using $variable is string interpolation */
              ),
            ),
          ),
        ],
      ),
    );
  }

  void randoDice() {
    setState(() {
      /* setState() calls build() to refresh screen */
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
