import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDieState = 1;
  int rightDieState = 1;

  void getNumber() {
    rightDieState = Random().nextInt(6) + 1;
    leftDieState = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    getNumber();
                  });
                },
                child: Image.asset('images/dice$leftDieState.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    getNumber();
                  });
                },
                child: Image.asset('images/dice$rightDieState.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
