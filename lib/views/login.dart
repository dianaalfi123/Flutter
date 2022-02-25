import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;

class LoginPage extends StatelessWidget{
  final  _controller = TextEditingController();
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor:Colors.cyan[900],
        //shadow bottom
        elevation:20.3,
      ),
      body: Container(
      child : Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: _controller,
              decoration:  InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: _controller,
                decoration:  InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Password',
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),
        ElevatedButton(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => Navigator.pushNamed(context, route.homePage),
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
        ],
        ),
      ),
      ),
    );

  }
}
