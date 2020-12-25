import 'package:flutter/material.dart';
import 'package:messenger_clone/screens/contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger Clone',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ContactScreen(),
    );
  }
}

