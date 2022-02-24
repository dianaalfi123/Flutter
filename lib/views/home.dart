import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;
import 'package:my_project_flutter/navBar.dart';

class HomePage extends StatelessWidget{
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: navBar(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child : ElevatedButton(
            child: Text(
              'Setiings',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pushNamed(context, route.settingsPage),
            style: style,
        ),
      ),
    );
  }
}