import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      color: Colors.grey.shade500,
      home: goole(),
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
  String text1, text2, text3;

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

class goole extends StatefulWidget {
  @override
  _gooleState createState() => _gooleState();

}

class _gooleState extends State<goole> {


  int count = 0;
  Icon icon1  = Icon(Icons.star_border);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Google translate',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.storage),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 20,
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Center(
                      child: Text(
                        'English',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blueAccent,
                    size: 22,
                  ),
                ),
              ),
              Expanded(
                flex: 45,
                child: Container(
                  color: Colors.white,
                  height: 50,
                  child: Icon(
                    Icons.compare_arrows,
                    color: Colors.blueAccent,
                    size: 38,
                  ),
                ),
              ),
              Expanded(
                flex: 22,
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Center(
                      child: Text(
                    'Indonesian',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  )),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blueAccent,
                    size: 22,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  height: 50,
                ),
                flex: 3,
              )
            ],
          ),
          Container(
            height: 2,
            color: Colors.white70,
          ),
          Container(
            height: 20,
            color: Colors.white,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 24,
                color: Colors.white,
                height: 26,
              ),
              Container(
                child: Icon(
                  Icons.volume_up,
                  color: Colors.black,
                ),
                height: 26,
                color: Colors.white,
              ),
              Container(
                height: 26,
                color: Colors.white,
                child: Center(
                    child: Text(
                  'ENGLISH',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )),
              ),
              Expanded(
                child: Container(
                  height: 26,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                height: 26,
                color: Colors.white,
              ),
              Container(
                height: 26,
                width: 24,
                color: Colors.white,
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 120,
                width: 24,
                color: Colors.white,
              ),
              Container(
                width: 180,
                color: Colors.white,
                height: 120,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Text(
                      'good morning',
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: 120,
                color: Colors.white,
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 24,
                height: 24,
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.blueAccent,
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Icon(
                  Icons.mode_edit,
                  color: Colors.blueAccent,
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Icon(Icons.headset_mic, color: Colors.blueAccent),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Icon(Icons.mic, color: Colors.blueAccent),
              )),
              Container(
                color: Colors.white,
                width: 24,
                height: 24,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 24,
                height: 32,
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Center(
                    child: Text('camera', style: TextStyle(fontSize: 12))),
                height: 32,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Center(
                    child: Text('camera', style: TextStyle(fontSize: 12))),
                height: 32,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Center(
                    child: Text('camera', style: TextStyle(fontSize: 12))),
                height: 32,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
                width: 24,
                child: Center(
                    child: Text('camera', style: TextStyle(fontSize: 12))),
                height: 32,
              )),
              Container(
                color: Colors.white,
                width: 24,
                height: 32,
              ),
            ],
          ),
          Card(
            color: Colors.blueAccent,
            margin: EdgeInsets.only(top: 9, left: 9, right: 9),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0,),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 16,
                        height: 27,
                      ),
                      Icon(
                        Icons.volume_up,
                        color: Colors.white,
                        size: 28,
                      ),
                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right:12.0),
                            child: Text(
                              'INDONESIAN',
                              style: TextStyle(color: Colors.white,fontSize: 17),
                            ),
                          ),
                        ),
                        width: 120,
                        height: 27,
                      ),
                      Expanded(
                        child: Container(
                          width: 16,
                          height: 27,
                        ),
                      ),IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        icon: icon1,
                        onPressed: (){
                          count+=1;
                          if(count%2==0){
                          setState(() {
                            icon1 = Icon(Icons.star);
                          });
                        }else{
                            setState(() {
                              icon1 = Icon(Icons.star_border);
                            });
                          }
                          },
                      ),Container(width: 20,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 20,top: 18),
                  child: Row(
                    children: <Widget>[
                      Text('Selamat pagi',style: TextStyle(color: Colors.white,fontSize: 25),),
                      Expanded(child: Container())
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(left:16.0,right: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Container(height: 79,)),
                      Icon(Icons.content_copy,color: Colors.white,size: 32,),
                      Container(width: 10,),
                      Icon(Icons.more_vert,color: Colors.white,size: 34,),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 9, left: 9, right: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Text(
                    'DEFINITIONS',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Text(
                    'exclaimation',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[400]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 45.0, top: 10, right: 20),
                  child: Text(
                    'Whether to paint the shape border in front of the child',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45.0, top: 10, right: 20, bottom: 40),
                  child: Text(
                    '"Hey definition is - —used especially to call attention or to express interrogation, surprise, or exultation. How to use hey in a sentence."',
                    style: TextStyle(fontSize: 18, color: Colors.grey[400]),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
