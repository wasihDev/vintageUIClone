import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff77A489),
        body: Center(
            child: Text('Notification', style: TextStyle(fontSize: 25))));
  }
}
