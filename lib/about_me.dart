import 'package:flutter/material.dart';
import 'change_theme.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me'),
        actions: [ChangeTheme()],
      ),
      body: Center(
          child: Container(
        width: 350,
        child: Text(
          "Hi, nice to meet you! My name is Ana Laura, I'm a second year student of Systems Analisys and Development in FACENS university, Sorocaba, Brasil.",
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}
