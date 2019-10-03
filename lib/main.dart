import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PasswordGenerator(),
    ),
  );
}

List words = Words.list; // you are given list of words

// Create a stateful widget called `PasswordGenerator` here
class PasswordGenerator extends StatefulWidget {
  @override
  _PasswordGeneratorState createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {
  String text1, text2 , text3 ;

  void generator() {
    Random rand = Random();
    int a, b, c;
    a = 1 + rand.nextInt(words.length);
    b = 1 + rand.nextInt(words.length);
    c = 1 + rand.nextInt(words.length);
    setState(() {
      text1 = words[a];
      text2 = words[b];
      text3 = words[c];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RandomPasswords'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
                child: Text('$text1 $text2 $text3',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                    ))),
          ),
          Center(
            child: Container(
              height: 40,
              width: 200,
              child: RaisedButton(
                onPressed: generator,
                color: Colors.lightBlueAccent,
                child: Text('Generate',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 8)),
              ),
            ),
          )
        ],
      ), // Should be PasswordGenerator()
    );
  }
}
