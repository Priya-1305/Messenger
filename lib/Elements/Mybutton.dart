import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String ButtonText;
  final VoidCallback onTap;
  const Mybutton({super.key, required this.ButtonText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        ButtonText,
        style:
            TextStyle(color: CupertinoColors.darkBackgroundGray, fontSize: 22),
      ),
    );
  }
}
