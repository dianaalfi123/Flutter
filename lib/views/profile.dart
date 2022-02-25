import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;
import 'package:my_project_flutter/navBar.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: navBar(),
        appBar : AppBar(
          title: Text('Profile'),
          centerTitle: false,
          backgroundColor: Colors.cyan.shade900,
          elevation: 20.3,
        ),
        body: Center(
            child: Text('Profile Field'),
        ),
    );
  }
}