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
                    Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                          (route) => false);
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
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
              SizedBox(
                height: 15,
              ),
              Text(
                "Name: ${FirebaseAuth.instance.currentUser!.displayName}",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "email id: ${FirebaseAuth.instance.currentUser!.email}",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        )));
  }
}
