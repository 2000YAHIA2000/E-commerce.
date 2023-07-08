import 'package:ecommerce/test.dart';
import 'package:flutter/material.dart';
import 'Prodacte_dea.dart';
import 'Profile_Setting.dart';
import 'Sea_All.dart';
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
       //home:MyWidget()
       // home: Start(),
        //home: Profile_Setting(),
      //home: Store(),
        home:Sea_All(),
     // home: Prodacte_dea(),
    );
  }
}


