import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOne = 1;
  int numberTwo = 1;
  var random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset("images/dice$numberOne.png"),
                  onPressed: () => numberRandom(),
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset("images/dice$numberTwo.png"),
                  onPressed: () => numberRandom(),
                ),
              ),
            ],
          ),
        ));
  }
  void numberRandom(){
    setState(() {
      numberOne = random.nextInt(5)+1 ;
      numberTwo = random.nextInt(5)+1 ;
    });
  }

}
