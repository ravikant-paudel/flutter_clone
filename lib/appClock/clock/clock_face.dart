import 'package:flutter/material.dart';

import 'clock_dial_painter.dart';
import 'clock_hands.dart';
import 'clock_text.dart';

class ClockFace extends StatelessWidget {
  final DateTime dateTime;
  final ClockText clockText;

  ClockFace({this.clockText = ClockText.arabic, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new AspectRatio(
          aspectRatio: .75,
          child: new Container(
            width: double.infinity,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff4f9fd),
              boxShadow: [
                BoxShadow(
                    offset: Offset(8.0, 0),
                    blurRadius: 13,
                    spreadRadius: 1,
                    color: Color(0xffd3e0f0))
              ],
            ),
            /*child: new Stack(
              children: <Widget>[
                //dial and numbers
                new Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                ),
              ],
            ),*/
          ),
        ),
      ),
    );
  }
}
