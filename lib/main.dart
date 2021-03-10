import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter_app/lib/Access/signup.dart';
import 'file:///C:/Users/ICTA%20NOC/Documents/flutter_app/lib/Screens/welcome_screen.dart';

import 'Access/login.dart';





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

