import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff77A489),
      body: Center(child: Text('MyProfile', style: TextStyle(fontSize: 25))),
    );
  }
}
