import 'package:flutter/material.dart';
import 'app_controller.dart';

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        AppController.instance.changeTheme();
      },
      icon: Icon(
        AppController.instance.isDarkTheme == false ? Icons.dark_mode : Icons.sunny
      ),
      color: AppController.instance.isDarkTheme == false ? Colors.black54 : Colors.amber,
    );
  }
}