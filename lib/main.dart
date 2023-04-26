// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _changingText = const [
    "Hello Queen!",
    "Welcome to my world!",
    "I am glad you made it to me.",
    "How are you?",
    "I hope you're doing great in life!"

  ];

  //index of the text in the list of text
  var _textIndex = 0;

  //function to be called onpressed of button. It changes the text index
  void _textControl() {
    setState(() {
      _textIndex++;
    });
  }

  void _resetIndex() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Assignment"),
          ),
          body: _textIndex < _changingText.length
              ? MyText(
                  changingText: _changingText,
                  clickHandler: _textControl,
                  textIndex: _textIndex)
              : TextButton(
                  onPressed: _resetIndex,
                  child: const Text(
                    'Rewind',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey),
                  ),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
                      )
      ),
    );
  }
}

// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
