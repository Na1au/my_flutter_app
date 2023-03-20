import 'package:flutter/material.dart';
import 'package:liquid_galaxy_app/app_controller.dart';
import 'package:liquid_galaxy_app/about_me.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.amber,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => HomePage(),
            },
          );
        });
  }
}
