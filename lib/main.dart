import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feature_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
//      .then((_) {
  runApp(MyApp());
//  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: FeatureList(),
    );
  }
}
