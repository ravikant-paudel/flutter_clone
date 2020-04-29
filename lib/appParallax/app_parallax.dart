import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppParallax extends StatefulWidget {
  @override
  _AppParallaxState createState() => _AppParallaxState();
}

class _AppParallaxState extends State<AppParallax> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 0;

  String assets;
  double top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        // ignore: missing_return
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            // only in notification scroll
            setState(() {
//              topOne = topOne - v.scrollDelta / 3;
//              topTwo = topTwo - v.scrollDelta / 1;

              rateEight -= v.scrollDelta / 1;
              rateSeven -= v.scrollDelta / 1.5;
              rateSix -= v.scrollDelta / 2;
              rateFive -= v.scrollDelta / 2.5;
              rateFour -= v.scrollDelta / 3;
              rateThree -= v.scrollDelta / 3.5;
              rateTwo -= v.scrollDelta / 4;
              rateOne -= v.scrollDelta / 4.5;
              rateZero -= v.scrollDelta / 5;
            });
          }
        },
        child: Stack(
          children: <Widget>[
            ParallexWidget(top: rateZero, assets: 'parallax0'),
            ParallexWidget(top: rateOne, assets: 'parallax1'),
            ParallexWidget(top: rateTwo, assets: 'parallax2'),
            ParallexWidget(top: rateThree, assets: 'parallax3'),
            ParallexWidget(top: rateFour, assets: 'parallax4'),
            ParallexWidget(top: rateFive, assets: 'parallax5'),
            ParallexWidget(top: rateSix, assets: 'parallax6'),
            ParallexWidget(top: rateSeven, assets: 'parallax7'),
            ParallexWidget(top: rateEight, assets: 'parallax8'),
            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  color: Color(0xff21002),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Parallex In',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xffffaf00),
                            letterSpacing: 1.8),
                      ),
                      Text(
                        'Flutter',
                        style: TextStyle(
                            fontSize: 51,
                            color: Color(0xffffaf00),
                            letterSpacing: 1.8),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 190,
                        child: Divider(
                          height: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Made By',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffffaf00),
                            letterSpacing: 1.8),
                      ),
                      Text(
                        'RaviKant Paudel',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffffaf00),
                            letterSpacing: 1.8),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ParallexWidget extends StatelessWidget {
  final double top;
  final String assets;

  const ParallexWidget({Key key, this.top, this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -45,
      top: top,
      child: Container(
        height: 550,
        width: 900,
        child: Image.asset(
          'assets/$assets.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
