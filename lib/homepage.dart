// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/firebase_services.dart';
import 'package:gdsc/login.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Homepage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () async {
                  await FirebaseServices().SignOutGoogle();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 28,
                )),
          )
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: <Widget>[
            Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            Text("${FirebaseAuth.instance.currentUser!.displayName}"),
            Text("${FirebaseAuth.instance.currentUser!.email}"),
          ],
        ),
      )),
    );
  }
}
