import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Text(
                'Mobile Developer',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 30),
              CircleAvatar(radius: 80),
              SizedBox(height: 30),
              Text(
                'Ravikant Paudel',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 30),
              Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.mail_outline, size: 22),
                        SizedBox(width: 10),
                        Text('Here', style: TextStyle(fontSize: 22))
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on, size: 22),
                        SizedBox(width: 10),
                        Text('Here', style: TextStyle(fontSize: 22))
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.branding_watermark, size: 22),
                        SizedBox(width: 10),
                        Text('Here', style: TextStyle(fontSize: 22))
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_circle, size: 22),
                        SizedBox(width: 10),
                        Text('Here', style: TextStyle(fontSize: 22))
                      ]),
                  SizedBox(height: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
