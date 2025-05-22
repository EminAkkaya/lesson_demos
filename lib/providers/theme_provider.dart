import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData theme = ThemeData.light();

  void changeTheme() {
    theme = theme == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}
