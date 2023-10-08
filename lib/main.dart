// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:portfolio_c/contact.dart';
import 'package:portfolio_c/description.dart';
import 'package:portfolio_c/projects.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/myprojects': (context) => MyProject(),
      '/about': (context) => AboutMe(),
      '/contact': (context) => ContactMe(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
