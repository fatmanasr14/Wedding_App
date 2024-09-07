import 'package:flutter/material.dart';
import 'package:weddingapp/login.dart';
 // Import your login page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chatbot Demo',
      
      home: LoginPage(), // Set LoginPage as the initial route
    );
  }
}
