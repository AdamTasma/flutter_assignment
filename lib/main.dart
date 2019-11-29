// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _isOn = false;

  void _myButtonPress() {
    setState(() {
      _isOn = !_isOn;
    });

    print(_isOn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Second App')),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  child: Text("flip the switch"),
                  onPressed: _myButtonPress,
                  textColor: Colors.blue),
              _isOn
                  ? Text('ON', style: TextStyle(color: Colors.green))
                  : Text('OFF', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
