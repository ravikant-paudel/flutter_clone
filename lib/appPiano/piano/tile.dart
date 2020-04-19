import 'package:flutter/material.dart';
import 'package:flutterclone/appPiano/model/note.dart';

class Tile extends StatelessWidget {
  final NoteState state;
  final double height;
  final VoidCallback onTap; //<--new parameter

  const Tile({Key key, this.state, this.height, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: GestureDetector(
        onTapDown: (_) => onTap(), //<-- call onTap
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Color get color {
    switch (state) {
      case NoteState.ready:
        return Colors.black;
      case NoteState.missed:
        return Colors.red;
      case NoteState.tapped:
        return Colors.transparent;
      default:
        return Colors.black;
    }
  }
}
