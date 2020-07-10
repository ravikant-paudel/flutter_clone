import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MinuteHandPainter extends CustomPainter {
  final Paint minuteHandPaint;
  int minutes;
  int seconds;

  MinuteHandPainter({this.minutes, this.seconds})
      : minuteHandPaint = new Paint() {
    minuteHandPaint.color = const Color(0xffc5cbdd);
    minuteHandPaint.style = PaintingStyle.stroke;
    minuteHandPaint.strokeCap = StrokeCap.round;
    minuteHandPaint.strokeWidth = 5.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    canvas.save();

    canvas.translate(radius, radius);

    canvas.rotate(2 * pi * ((this.minutes + (this.seconds / 60)) / 60));

    Path path = new Path();
    /*path.moveTo(-1.5, -radius - 10.0);
    path.lineTo(-5.0, -radius / 1.8);
    path.lineTo(-2.0, 10.0);
    path.lineTo(2.0, 10.0);
    path.lineTo(5.0, -radius / 1.8);
    path.lineTo(1.5, -radius - 10.0);
    path.close();*/
    path.moveTo(0.0, -radius * 0.7);
    path.lineTo(0.0, radius * 0.1);

    canvas.drawPath(path, minuteHandPaint);
    canvas.drawShadow(path, Colors.black, 4.0, false);

    canvas.restore();
  }

  @override
  bool shouldRepaint(MinuteHandPainter oldDelegate) {
    return true;
  }
}
