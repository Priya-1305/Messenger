import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Pages/LoginPage.dart';
import 'package:messenger/Pages/homepage.dart';

class Firestream extends StatefulWidget {
  const Firestream({super.key});

  State<Firestream> createState() => _FirestreamState();
}

class _FirestreamState extends State<Firestream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("yes your data is here");
            return homePage();
          } else {
            print("no data");
            return Loginpage();
          }
        },
      ),
    );
  }
}
