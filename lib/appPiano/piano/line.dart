import 'package:flutter/material.dart';
import 'package:flutterclone/appPiano/model/note.dart';
import 'package:flutterclone/appPiano/piano/tile.dart';

class Line extends AnimatedWidget {
  final int lineNumber;
  final List<Note> currentNotes;
  final Function(Note) onTileTap; //<--new parameter

  const Line(
      {Key key,
      this.lineNumber,
      this.currentNotes,
      this.onTileTap,
      Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    //get heights
    double height = MediaQuery.of(context).size.height;
    double tileHeight = height / 4;

    Animation<double> animation = super.listenable; //<--get the animation

    //get only notes for that line
    List<Note> thisLineNotes =
        currentNotes.where((note) => note.line == lineNumber).toList();

    //map notes to widgets
    List<Widget> tiles = thisLineNotes.map((note) {
      //specify note distance from top
      int index = currentNotes.indexOf(note);
//      double offset = (3 - index) * tileHeight;

      double offset = (3 - index + animation.value) *
          tileHeight; //<-- add animation.value to offset

      return Transform.translate(
        offset: Offset(0, offset),
        child: Tile(
          height: tileHeight,
          state: note.state,
          onTap: () => onTileTap(note), //<-- pass tap callback
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
