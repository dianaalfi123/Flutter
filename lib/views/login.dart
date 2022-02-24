import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;

class LoginPage extends StatelessWidget{
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child : ElevatedButton(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => Navigator.pushNamed(context, route.homePage),
          style:style
        ),
      ),
    );
  }
}