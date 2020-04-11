import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class WorldWidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      children: <Widget>[
        StatusPanel(
          title: 'CONFIRMED',
          panelColor: Colors.red[100],
          textColor: Colors.red,
          count: '1234',
        ),
        StatusPanel(
          title: 'ACTIVE',
          panelColor: Colors.green[100],
          textColor: Colors.green,
          count: '1234',
        ),
        StatusPanel(
          title: 'RECOVERED',
          panelColor: Colors.teal[100],
          textColor: Colors.teal,
          count: '1234',
        ),
        StatusPanel(
          title: 'CONFIRMED',
          panelColor: Colors.grey[350],
          textColor: Colors.grey[900],
          count: '1234',
        ),
      ],
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key key, this.panelColor, this.textColor, this.title, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 80,
      color: panelColor,
      width: width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$title',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: textColor,
            ),
          ),
          Text(
            '$count',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
