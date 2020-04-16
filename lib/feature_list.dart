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
                child: Text('Clock'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppClock()),
                  );
                },
                textColor: Colors.white,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('A'),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('C'),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('D'),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('E'),
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
