import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logins_screen/Screens/Login/LoginScreens.dart';
import 'package:logins_screen/routes.dart';
import 'package:logins_screen/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Features/USERS/HomeUsers.dart';

var dataUserLogin;
bool? login = false;
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences;
  sharedPreferences = await SharedPreferences.getInstance();
  login = sharedPreferences.getBool("login");
  String defaultRoutes;
  if (login != null) {
    if (login == false) {
      defaultRoutes = LoginScreen.routeName;
    } else {
      dataUserLogin = sharedPreferences.getString("dataUser");
      var data = jsonDecode(dataUserLogin);
      if (data['role'] == 'user') {
        defaultRoutes = HomeUsers.routeName;
      } else {
        defaultRoutes = LoginScreen.routeName;
      }
    }
  } else {
    defaultRoutes = LoginScreen.routeName;
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'SORUM MOTOR',
    theme: theme(),
    initialRoute: defaultRoutes,
    routes: routes,
  ));
  // });
}
