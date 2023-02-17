import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool darkMode = true;

  void changeTheme() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
