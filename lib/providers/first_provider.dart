import 'package:flutter/material.dart';

class FirstProvider with ChangeNotifier {
  int _counter = 0;
  ThemeData theme = ThemeData.dark();
  int get counter => _counter;
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
