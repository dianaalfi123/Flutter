import 'package:flutter/material.dart';
import 'package:my_project_flutter/route/route.dart' as route;

class navBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: const Text('Diana Alfi Ainun Nur Khasanah'),
                accountEmail: const Text('dianaalfi123@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child:ClipOval(
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image:DecorationImage(
                  fit:BoxFit.fill,
                  image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGQfuOmviVFOF1ufAd9iYZlf_BXFrxaFiJtg&usqp=CAU')
                ),
              ),
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pushNamed(context, route.homePage),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
              onTap: () => null,
              trailing: ClipOval(
                child:Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text('0',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () => Navigator.pushNamed(context, route.settingsPage),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () => Navigator.pushNamed(context, route.loginPage),
            ),
          ],
        ),
    );
  }
}