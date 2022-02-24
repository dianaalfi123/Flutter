import 'package:flutter/material.dart';

import 'package:my_project_flutter/views/home.dart';
import 'package:my_project_flutter/views/login.dart';
import 'package:my_project_flutter/views/settings.dart';

const String loginPage = 'login';
const String homePage = 'home';
const String settingsPage = 'setting';

Route<dynamic> controller(RouteSettings settings){
  switch(settings.name){
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    case settingsPage:
      return MaterialPageRoute(builder: (context) => SettingsPage());
    default:
      throw('This route name does not exit');
  }
}