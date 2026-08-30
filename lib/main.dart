import 'package:api_project/view/book.dart';
import 'package:api_project/view/countries.dart';
import 'package:api_project/view/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Countries(),
    ) ;
  }
}
