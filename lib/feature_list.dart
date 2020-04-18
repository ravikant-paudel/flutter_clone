import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterclone/appClock/app_clock.dart';

class FeatureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select App'),
      ),
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
                  'A',
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
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'C',
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
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'D',
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
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'E',
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
