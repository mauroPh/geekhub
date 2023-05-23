import 'package:flutter/material.dart';
import 'package:geekhub/views/geekhub_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GeekHub',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GeekHubHomePage());
  }
}
