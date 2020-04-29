import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterclone/appBlock/counter_block.dart';

class AppBlock extends StatelessWidget {
  void incrementCounter() {
    counterBlock.updateCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Block'),
      ),
      body: Counter(),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have push the bottom this many times.',
          ),
          Text(''),
        ],
      ),
    );
  }
}
