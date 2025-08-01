import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/tabbar_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FacebookLoginScreen(),
    );
  }
}
