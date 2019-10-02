import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RandomPasswords'),
        ),
        body: Container(), // Should be PasswordGenerator()
      ),
    ),
  );
}

List words = Words.list; // you are given list of words

// Create a stateful widget called `PasswordGenerator` here

