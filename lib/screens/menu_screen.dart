import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Menu Screen",
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }
}
