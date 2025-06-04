import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() => runApp(SmartFloodApp());

class SmartFloodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartFlood',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}