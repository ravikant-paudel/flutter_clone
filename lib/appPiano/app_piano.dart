import 'package:flutter/material.dart';

import 'model/note.dart';
import 'piano/line.dart';
import 'piano/song_provider.dart';
import 'package:audioplayers/audio_cache.dart';

class AppPiano extends StatefulWidget {
  @override
  _AppPianoState createState() => _AppPianoState();
}

class _AppPianoState extends State<AppPiano>
    with SingleTickerProviderStateMixin {
  List<Note> notes = initNotes();
  int currentNoteIndex = 0;
  AnimationController animationController;
  int points = 0; //<-- add points field
  bool hasStarted = false;
  bool isPlaying = true;
  AudioCache player = new AudioCache(); //<-- use AudioCache

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed && isPlaying) {
        //<-- Add this check
        if (notes[currentNoteIndex].state != NoteState.tapped) {
          //<--Add this check
          //game over
          setState(() {
            isPlaying = false; //<--Stop the game
            notes[currentNoteIndex].state =
                NoteState.missed; //<-- set note state to missed
          });
          animationController.reverse().then((_) =>
              _showFinishDialog()); //<--Show dialog when reverse animaiton finishes
        } else if (currentNoteIndex == notes.length - 5) {
          //song finished
        } else {
          setState(() => ++currentNoteIndex);
          animationController.forward(from: 0);
        }
      }
    });
//    animationController.forward(); //<--- start the animation for the first time
  }

  @override
  void dispose() {
    animationController.dispose(); //<--- remember to dispose the controller
    super.dispose();
  }

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
              VerticalDivider(
                width: 1,
                color: Colors.white,
              ),
              _drawLine(1),
              VerticalDivider(
                width: 1,
                color: Colors.white,
              ),
              _drawLine(2),
              VerticalDivider(
                width: 1,
                color: Colors.white,
              ),
              _drawLine(3),
            ],
          ),
          _drawPoints(),
        ],
      ),
    );
  }

  void _onTap(Note note) {
    bool areAllPreviousTapped = notes
        .sublist(0, note.orderNumber)
        .every((n) => n.state == NoteState.tapped);
    if (areAllPreviousTapped) {
      if (!hasStarted) {
        //<-- If game hasn't started
        setState(() => hasStarted = true); //<-- Set flag to true
        animationController.forward(); //<-- And start the animation
      }
      _playNote(note); //<-- play a note on tap
      setState(() {
        note.state = NoteState.tapped; //<--set note state to tapped
        ++points; //<-- increase number of points
      });
    }
  }

  _drawLine(int lineNumber) {
    return Expanded(
      child: Line(
        lineNumber: lineNumber,
        currentNotes: notes.sublist(
            currentNoteIndex, currentNoteIndex + 5), //<-- pass 5 notes
        onTileTap: _onTap, //<--specify onTap callback
        animation: animationController, //<-- pass animationControll
      ),
    );
  }

  _drawPoints() {
    //<-- draw points
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Text(
          "$points",
          style: TextStyle(color: Colors.red, fontSize: 60),
        ),
      ),
    );
  }

  _playNote(Note note) {
    switch (note.line) {
      //<-- choose a sound depending on the note's line
      case 0:
        player.play('a.wav');
        return;
      case 1:
        player.play('c.wav');
        return;
      case 2:
        player.play('e.wav');
        return;
      case 3:
        player.play('f.wav');
        return;
    }
  }

  void _restart() {
    setState(() {
      hasStarted = false;
      isPlaying = true;
      notes = initNotes();
      points = 0;
      currentNoteIndex = 0;
    });
    animationController.reset();
  }

  void _showFinishDialog() {
    showDialog(
      //<--Show a dialog
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Score: $points"), //<--With number of points
          actions: <Widget>[
            FlatButton(
              //<-- and restart button
              onPressed: () => Navigator.of(context).pop(),
              child: Text("RESTART"),
            ),
          ],
        );
      },
    ).then((_) => _restart()); //<-- restart game when dialog is closed
  }
}
