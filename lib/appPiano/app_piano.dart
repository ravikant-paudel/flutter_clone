import 'package:flutter/material.dart';

import 'model/note.dart';
import 'piano/line.dart';
import 'piano/song_provider.dart';

class AppPiano extends StatefulWidget {
  @override
  _AppPianoState createState() => _AppPianoState();
}

class _AppPianoState extends State<AppPiano> {
  List<Note> notes = initNotes();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
          ),
          Row(
            children: <Widget>[
              _drawLine(0),
              VerticalDivider(),
              _drawLine(1),
              VerticalDivider(),
              _drawLine(2),
              VerticalDivider(),
              _drawLine(3),
            ],
          ),
//          _drawPoints(),
        ],
      ),
    );
  }

  _drawLine(int lineNumber) {
    return Expanded(
      child: Line(
        lineNumber: lineNumber,
        currentNotes: notes.sublist(0, 4),
      ),
    );
  }
}
