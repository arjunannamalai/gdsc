// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gdsc/homepage.dart';
import 'package:gdsc/login.dart';
import 'package:gdsc/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
