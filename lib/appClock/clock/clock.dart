import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'clock_dial_painter.dart';
import 'clock_face.dart';
import 'clock_hands.dart';
import 'clock_text.dart';

typedef TimeProducer = DateTime Function();

class Clock extends StatefulWidget {
  final Color circleColor;
  final ClockText clockText;
  final Color shadowColor;
  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  Clock(
      {this.circleColor = const Color(0xfffe1ecf7),
      this.shadowColor = const Color(0xffd9e2ed),
      this.clockText = ClockText.arabic,
      this.getCurrentTime = getSystemTime,
      this.updateDuration = const Duration(seconds: 1)});

  static DateTime getSystemTime() {
    return new DateTime.now();
  }

  @override
  State<StatefulWidget> createState() {
    return _Clock();
  }
}

class _Clock extends State<Clock> {
  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = new DateTime.now();
    this._timer = new Timer.periodic(widget.updateDuration, setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = new DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: 1.0,
      child: buildClockCircle(context),
    );
  }

  Container buildClockCircle(BuildContext context) {
    return new Container(
        width: double.infinity,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          boxShadow: [
            new BoxShadow(
              offset: new Offset(0.0, 5.0),
              blurRadius: 0.0,
              color: widget.shadowColor,
            ),
            BoxShadow(
              offset: Offset(0.0, 5.0),
              color: widget.circleColor,
              blurRadius: 10.0,
              spreadRadius: -8,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            new ClockFace(
              clockText: widget.clockText,
              dateTime: dateTime,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: new CustomPaint(
                painter: new ClockDialPainter(clockText: widget.clockText),
              ),
            ),
            new ClockHands(
              dateTime: dateTime,
            ),
          ],
        ));
  }
}
