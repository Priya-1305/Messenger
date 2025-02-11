import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Auth/firestream.dart';
import 'package:messenger/Elements/MyTextField.dart';
import 'package:messenger/Elements/Mybutton.dart';

class Forgetpw extends StatefulWidget {
  @override
  Forgetpw({super.key});

  @override
  State<Forgetpw> createState() => _ForgetpwState();
}

class _ForgetpwState extends State<Forgetpw> {
  final TextEditingController _email = TextEditingController();
  resetpw() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _email.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Enter the Register Email ID'),
          SizedBox(
            height: 30,
          ),
          MyTextField(
            obscureText: false,
            controller: _email,
            hintText: '@gmail.com',
            label: 'Email',
            prefixIcon: Icon(Icons.email),
          ),
          SizedBox(height: 20),
          Mybutton(ButtonText: 'Send Link', onTap: resetpw),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Firestream(),
              ),
            ),
            child: Text('Login In'),
          ),
        ],
      ),
    ));
  }
}
