import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Auth/firestream.dart';
import 'package:messenger/Elements/Mybutton.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  final currentUser = FirebaseAuth.instance.currentUser;

  signOut() {
    FirebaseAuth.instance.signOut();
    print("logout");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Firestream(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentUser != null
                  ? "Email: ${currentUser!.email}"
                  : "No User Logged In",
            ),
            Mybutton(ButtonText: 'SignUp', onTap: signOut)
          ],
        ),
      ),
    );
  }
}

class $user {}
