import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            DrawerHeader(
              child: Icon(Icons.menu_open_outlined),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('H O M E'),
                    leading: Icon(Icons.home),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    title: Text('S E T T I N G S'),
                    leading: Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: ListTile(
                title: Text('l O G O U T'),
                leading: Icon(Icons.logout),
                onTap: () => FirebaseAuth.instance.signOut(),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
