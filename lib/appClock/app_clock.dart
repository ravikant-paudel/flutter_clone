import 'package:flutter/material.dart';

import 'clock/clock.dart';
import 'clock/clock_text.dart';

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Clock(
                /*circleColor: Colors.black,
              showBellsAndLegs: true,
              bellColor: Colors.teal,
              clockText: ClockText.arabic,
              showHourHandleHeartShape: false,*/
                ),
          ],
        ),
      ),
    );
  }
}
