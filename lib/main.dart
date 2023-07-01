import 'package:flutter/material.dart';
import 'Start.dart';
import 'Store.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Start(),
      home: Store(),
    );
  }
}


