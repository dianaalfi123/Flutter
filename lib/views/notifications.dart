import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;
import 'package:my_project_flutter/navBar.dart';

class NotificationsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: navBar(),
      appBar : AppBar(
        title: Text('Notifications'),
        centerTitle:false,
        elevation: 20.3,
        backgroundColor:Colors.cyan[900],
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
        child: Text('Notifications field')
      ),
    );
  }
}