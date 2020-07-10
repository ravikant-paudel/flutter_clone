import 'dart:async';

import 'package:flutterclone/appBlock/counter_provider.dart';

class CounterBlock {
  StreamController counterController = StreamController();

  CounterProvider provider = CounterProvider();

  Stream get getCount => counterController.stream;

  void updateCount() {
    provider.increaseCount();
    counterController.sink.add(provider.count);

    void dispose() {
      counterController.close();
    }
  }
}

final counterBlock = CounterBlock();
