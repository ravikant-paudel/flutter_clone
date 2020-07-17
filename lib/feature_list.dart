import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterclone/appBlock/app_block.dart';
import 'package:flutterclone/appClock/app_clock.dart';
import 'package:flutterclone/appEnglish/app_english.dart';
import 'package:flutterclone/appPiano/app_piano.dart';

import 'appCompass/app_compass.dart';
import 'appParallax/app_parallax.dart';

class FeatureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'Clock',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppClock()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'Compass',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppCompass()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'Paino Game',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppPiano()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'Parallax Scrolling',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppParallax()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'AppBlock',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBlock()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'English',
                  style: TextStyle(
                    letterSpacing: 1.5,
                  ),
                ),
                color: Color(0xffff5e92),
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppEnglish()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
