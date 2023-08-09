import 'package:flutter/material.dart';
import 'package:uas_flutter2/login.dart';
import 'package:uas_flutter2/about.dart';
import 'package:uas_flutter2/dashboard.dart';
import 'package:uas_flutter2/help.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      title: 'DriveKJ',
      routes: {
        'login': (context) => MyLogin(), 
        'dashboard': (context) => DashboardScreen(), 
        'about' :(context) => AboutScreen(),
        'helpsupport': (context) => HelpSupportScreen(),
      },
    ),
  );
}