import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  var _isOn = false;

  void _flipSwitch() {
    setState(() {
      _isOn = !_isOn;
    });

    print(_isOn);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
              child: Text("flip the switch"),
              onPressed: _flipSwitch,
              textColor: Colors.blue),
          _isOn
              ? Text('ON', style: TextStyle(color: Colors.green))
              : Text('OFF', style: TextStyle(color: Colors.red))
        ],
      ),
    );
  }
}
