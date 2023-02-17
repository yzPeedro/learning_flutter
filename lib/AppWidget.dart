// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:learning_flutter/AppController.dart';

import 'HomePage.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primarySwatch: Colors.indigo,
                  brightness: (AppController.instance.darkMode)
                      ? Brightness.dark
                      : Brightness.light),
              home: HomePage());
        });
  }
}
