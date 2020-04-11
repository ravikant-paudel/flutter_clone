import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterclone/data_source.dart';
import 'package:flutterclone/pannels/world_wide_pannels.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Covid-19 Tracker'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              color: Colors.teal[100],
              child: Text(
                DataSource.quote,
                style: TextStyle(
                  color: Colors.teal[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'WorldWide',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            WorldWidePanel(),
          ],
        ),
      ),
    );
  }
}
