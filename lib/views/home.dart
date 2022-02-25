import 'dart:html';

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
        centerTitle:false,
        backgroundColor:Colors.cyan[900],
        //shadow bottom
        elevation:20.3,
        actions: [
          Center(
            child: Text('+1'),
          ),
          IconButton(
            icon : Icon(Icons.notifications),
            onPressed: () => Navigator.pushNamed(context,route.notificationsPage),
          ),
        ],
      ),
      body: Center(
        child : ElevatedButton(
            child: Text(
              'Setiings',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pushNamed(context, route.settingsPage),
            style: ButtonStyle(
               overlayColor: MaterialStateProperty.all(Colors.black),
               backgroundColor: MaterialStateProperty.all(Colors.cyan.shade900),
               textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 12)
               ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

        ),
      ),
    );
  }
}

