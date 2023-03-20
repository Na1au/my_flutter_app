import 'package:flutter/material.dart';
import 'change_theme.dart';

class MyIdeas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My ideas'),
        actions: [ChangeTheme()],
      ),
      body: Center(
          child: Container(
        width: 350,
        child: Column(children: [
          Container(height: 50),
          Text(
          "These are my ideas for GSOC 2023: ",
          style: TextStyle(fontSize: 25),
        ),
        Container(height: 10),
        Text(
          "- COVID-19 data explorer",
          style: TextStyle(fontSize: 20),
        ),
        Container(height: 10),
        Text(
          "- Space Invaders game",
          style: TextStyle(fontSize: 20),
        ),
        ],)
      )),
    );
  }
}
