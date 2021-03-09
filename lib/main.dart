import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter_app/lib/Screens/home_screen.dart';
import 'package:flutter_app/nav.dart';
import 'package:flutter_app/profile/profile_screen.dart';
import 'package:flutter_app/signup.dart';
import 'package:flutter_app/welcome_screen.dart';

import 'login/login.dart';



void main() => runApp(MaterialApp(
  home: MyAPP()),
);



class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/welcomepage': (BuildContext context) => new WelcomeScreen()
      },
      home: new MyHomePage(),
    );
  }
}

