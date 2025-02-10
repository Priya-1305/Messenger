import 'package:flutter/material.dart';
import 'package:messenger/Elements/MyTextField.dart';
import 'package:messenger/Elements/Mybutton.dart';
import 'Registerpage.dart';

class Loginpage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Loginpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.message_rounded,
            size: 100,
          ),
          SizedBox(height: 20),
          Text('Welcome to Lets Chat'),
          SizedBox(height: 30),
          MyTextField(
            obscureText: false,
            controller: _emailController,
            hintText: '@gmail.com',
            label: 'email',
            prefixIcon: Icon(
              Icons.email_rounded,
              size: 22,
            ),
          ),
          SizedBox(height: 20),
          MyTextField(
            obscureText: true,
            controller: _passwordController,
            hintText: '******',
            label: 'password',
            prefixIcon: Icon(
              Icons.lock_rounded,
              size: 22,
            ),
          ),
          SizedBox(height: 20),
          Mybutton(
            ButtonText: 'Login',
            onTap: () => print('hello'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Create an Account?'),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registerpage())),
                    child: Text('Register Here'))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
