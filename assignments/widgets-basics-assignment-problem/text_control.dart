import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  String text;

  TextControl({this.text});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text('Change Text'),
          onPressed: () {
            setState(() {
              widget.text = 'YOU HAVE CHANGED THE TEST! CONGRATS!';
            });
          },
        ),
      ),
      TextOutput(widget.text),
    ]);
  }
}
