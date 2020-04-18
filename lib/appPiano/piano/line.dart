import 'package:flutter/material.dart';
import 'package:flutterclone/appPiano/model/note.dart';
import 'package:flutterclone/appPiano/piano/tile.dart';

class Line extends StatelessWidget {
  final int lineNumber;
  final List<Note> currentNotes;

  const Line({Key key, this.lineNumber, this.currentNotes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get heights
    double height = MediaQuery.of(context).size.height;
    double tileHeight = height / 4;

    //get only notes for that line
    List<Note> thisLineNotes =
        currentNotes.where((note) => note.line == lineNumber).toList();

    //map notes to widgets
    List<Widget> tiles = thisLineNotes.map((note) {
      //specify note distance from top
      int index = currentNotes.indexOf(note);
      double offset = (3 - index) * tileHeight;

      return Transform.translate(
        offset: Offset(0, offset),
        child: Tile(
          height: tileHeight,
          state: note.state,
        ),
      );
    }).toList();

    return SizedBox.expand(
      child: Stack(
        children: tiles,
      ),
    );
  }
}
