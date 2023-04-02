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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 1;
  //int change = 1;

  void changeDice() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      //change = Random().nextInt(6) + 1;
      print('okay!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          /*Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change = Random().nextInt(6) + 1;
                  print('yes!');
                });
              },
              child: Image.asset('images/dice$change.png'),
            ),
          ),*/
        ],
      ),
    );
  }
}
