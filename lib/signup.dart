// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   centerTitle: false,
      //   title: Text(
      //     "Sign up",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextField(),
                TextField(),
                TextButton(onPressed: () {}, child: Text("submit")),
                TextButton(onPressed: () {}, child: Text("google")),
                TextButton(onPressed: () {}, child: Text("phone")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
