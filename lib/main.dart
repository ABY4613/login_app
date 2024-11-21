// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_app/view/home_screen/home_screen.dart';
import 'package:login_app/view/splash_screen/splash_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main()async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
  String? username = prefs.getString('username');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   final String? username;

  const MyApp({super.key,this.username});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: username!=null?HomeScreen():SplashScreen()
      );
            
  }
}
