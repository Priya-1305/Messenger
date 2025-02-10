import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String label;
  final TextEditingController controller;
  final Widget prefixIcon;
  const MyTextField(
      {super.key,
      required this.obscureText,
      required this.controller,
      required this.hintText,
      required this.label,
      required this.prefixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: label,
          hintText: hintText,
          hintStyle: TextStyle(
              color: const Color.fromARGB(255, 194, 191, 191), fontSize: 19),
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 194, 191, 191), fontSize: 19),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: const Color.fromARGB(255, 16, 16, 16), width: 2.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
        ),
      ),
    );
  }
}
