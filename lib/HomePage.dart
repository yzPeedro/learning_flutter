// ignore: file_names
// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/AppController.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'LoginForm.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 70),
          child: Align(
            alignment: Alignment.topLeft,
            child: LoginForm(),
          ),
        ),
        appBar: AppBar(title: Text('Formulário'), actions: [
          FlutterSwitch(
            value: AppController.instance.darkMode,
            activeIcon: Icon(Icons.light_mode),
            activeColor: Colors.black,
            activeTextColor: Colors.black,
            activeToggleColor: Colors.black,
            inactiveIcon: Icon(Icons.dark_mode),
            inactiveColor: Colors.white,
            inactiveToggleColor: Colors.black,
            onToggle: (value) => AppController.instance.changeTheme(),
          ),
        ]));
  }
}
