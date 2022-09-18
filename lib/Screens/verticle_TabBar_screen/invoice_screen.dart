import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff77A489),
        body: Center(child: Text('Invoice', style: TextStyle(fontSize: 25))));
  }
}
