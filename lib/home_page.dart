import 'package:flutter/material.dart';
import 'package:liquid_galaxy_app/my_ideas.dart';
import 'change_theme.dart';
import 'about_me.dart';
import 'todo.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        actions: [ChangeTheme()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(height: 80),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 180,
                        height: 150,
                        child: Image.asset('assets/logoLG.png')),
                    SizedBox(
                        width: 150,
                        height: 120,
                        child: Image.asset('assets/mascotWaving.png')),
                  ],
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  child: Text(
                    'Welcome to my Flutter App!',
                    style: TextStyle(fontSize: 25),
                  ),
                  alignment: Alignment.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutMe())
                        );
                      },
                      child: Text('About me'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyIdeas())
                        );
                      },
                      child: Text('My ideas'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ToDo())
                        );
                      },
                      child: Text('To do'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
