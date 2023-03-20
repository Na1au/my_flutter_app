import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {

  static AppController instance = AppController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}

class TodoController extends ChangeNotifier {
  static TodoController instance = TodoController();
  bool isDone = false;
  changeDone() {
    isDone = !isDone;
    notifyListeners();
  }
}