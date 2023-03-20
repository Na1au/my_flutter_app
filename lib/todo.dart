import 'package:flutter/material.dart';
import 'change_theme.dart';

class TodoController extends ChangeNotifier {
  static TodoController instance = TodoController();
  bool isDone = false;
  changeDone() {
    isDone = !isDone;
    notifyListeners();
  }
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do'),
        actions: [ChangeTheme()],
      ),
      body: Center(
          child: Container(
        width: 350,
        child: Column(children: [
          Container(height: 50),
          Text(
          "To do list:",
          style: TextStyle(fontSize: 25),
        ),
        Container(height: 10),
        InkWell(
          child: Text(
          "- Check my drive folder",
          style: TextStyle(fontSize: 20),
        ),
        ),
        Container(height: 10),
        Text(
          "- Check my repository in GitHub",
          style: TextStyle(fontSize: 20),
        ),
        ],)
      )),
    );
  }
}