import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(classwork_2v2());
}

class classwork_2v2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Set the global app background color
        scaffoldBackgroundColor: Colors.lightBlue[100], // Light blue background
        appBarTheme: AppBarTheme(
          color: Colors.yellow[200], // Light yellow AppBar background
        ),
      ),
      home: HomeScreen(),
    );
  }
}
